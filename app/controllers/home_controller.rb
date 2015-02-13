class HomeController < ApplicationController
  def index
  end
   
  def hospital_list
   @hospitals = Hospital.all
  end
  
  def chemist_list
   @chemists = Chemist.all
  end

  def doctor_list
   @doctor_clinics = DoctorKol.all
  end
  
  def nurshing_home_list
   @nurshing_home = NurshingHome.all
  end

def report

    #require 'rubygems'
    #require 'aws/s3'
    
   # AWS::S3::Base.establish_connection!( :access_key_id => "AKIAJ2RC5BMJYI2YWWXQ", :secret_access_key => "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")


    # new_bucket = AWS::S3::Bucket.find('diagnostic123')
     #new_bucket = AWS::S3::Bucket.find('my-new-bucket')
     #new_bucket.each do |object|
      #  puts "################"
       # puts "#{object.key}\t#{object.about['content-length']}\t#{object.about['last-modified']}"
     #end

   # p new_bucket

    require 'nokogiri'
    #require 'open-uri'
    #url ="https://s3.amazonaws.com/diagnostic123/PATAPN.xml?X-Amz-Date=20150212T184813Z&X-Amz-Expires=300&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Signature=4db1959ce488ed9c14145ef8e29b401ce54b81540ddb21a0436ed1fbe683d7cf&X-Amz-Credential=ASIAIRNKFPKTLWBHZODQ/20150212/us-east-1/s3/aws4_request&X-Amz-SignedHeaders=Host&x-amz-security-token=AQoDYXdzEKr//////////wEakALmqit2xM/yDviudEJvkClR7W4ijtO2oHRwmiGMHe5G2HDnnx42/NA2zJsI0YlZtIu/mWz249ka8yY7Kb6LLkCGwR2jh0YcZkYvYIyt%2BGxdTzaSH/osYmj%2BMWIP2Xk1VE30CIOpcuIVZaqGskaIA2qCF43HYwGihB5mtNqOzGN%2BHjnmW/YRYWFUAeJGdA%2BZ/lKughZ2qjP5scAWKCey6rbnOhkmk84oQG3H62szDPjit5DFEe1gTcgre%2BYv1VE/xRzVLOFznnS0B2hMk%2BOPJdqIvO6u2Dtc2geJnVmh3%2BopzO%2BPpB0TuPBiARALfuaBpGjNw1Is8g%2BumYzz4TS3Ie3Btez9x06pMZEEiZXgDWBPIyCEv/OmBQ%3D%3D"
    doc = Nokogiri::XML(File.open("#{Rails.root}/public/PATNT.xml"))
       p doc

    #@variant = doc.xpath("//Table")
    @patients = doc.xpath('//NewDataSet/Table').map do |i|
      {'t_date' => i.xpath('t_date'), 'id_no1' => i.xpath('id_no1'), 'id_no2' => i.xpath('id_no2') ,
       'fname' => i.xpath('fname') ,'lname' => i.xpath('lname'), 'sex' => i.xpath('sex'), 'age' => i.xpath('age'),
       'ag_mon' => i.xpath('ag_mon'), 'ag_day' => i.xpath('ag_day'), 'addr1' => i.xpath('addr1'), 'addr2' => i.xpath('addr2'),
       'addr3' => i.xpath('addr3'), 'doctcode' => i.xpath('doctcode'), 'tot_amt' => i.xpath('tot_amt'),
       'col_charge' => i.xpath('col_charge'),  'disc' => i.xpath('disc'), 'amt_paid' => i.xpath('amt_paid'),
       'amt_due' => i.xpath('amt_due'),  'net_amt' => i.xpath('net_amt'), 'hist1' => i.xpath('hist1'), 'hist2' => i.xpath('hist2'),
       'rp_time' => i.xpath('rp_time'),  'ncode' => i.xpath('ncode'), 'collcode' => i.xpath('collcode'), 'title' => i.xpath('title'),
       'opintl' => i.xpath('opintl'),  'bktime' => i.xpath('bktime'), 'rfndamt' => i.xpath('rfndamt'), 'discper' => i.xpath('discper'),
       'cline1' => i.xpath('cline1'),  'midcd' => i.xpath('midcd'), 'urgnt' => i.xpath('urgnt'), 'urgtime' => i.xpath('urgtime')
      }
    end
  end

end

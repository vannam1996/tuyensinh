User.create!(name: "Nguyen Van A", email: "nguyenvana@gmail.com", password: "123456",
      phone: "01698624222", role: 0, address: "hai chau, Da Nang", year: DateTime.now.year,
      sex: 1, people_id: "201697277", nation: "Kinh", nationality: "Việt Nam",
      birthday: Faker::Date.between(20.years.ago, 19.years.ago), identification_number: Faker::Code.asin)

    1.upto(5) do |x|
      name = Faker::Name.name
      email = "manager#{x}@gmail.com"
      address = Faker::Address.street_address
      pass = "123456"
      pass_conf = "123456"
      role = 1
      phone = Faker::PhoneNumber.cell_phone
      sex = Faker::Number.rand(3)
      people_id = "#{Faker::Number.number(9)}"
      religion = "không"
      nation = "kinh"
      nationality = "Việt Nam"
      birthday = Faker::Date.between(30.years.ago, 20.years.ago)
      User.create! name: name, email: email, password: pass, year: DateTime.now.year,
        password_confirmation: pass_conf, role: role, address: address, phone: phone,
        sex: sex, people_id: people_id, nation: nation, nationality: nationality,
        birthday: birthday, religion: religion, school_id: x,
        identification_number: "#{Faker::Code.asin}-#{x}"
    end

    User.create! name: "Admin", email: "admin@gmail.com", password: "123456",
      password_confirmation: "123456", role: 2, address: Faker::Address.street_address,
      phone: "#{Faker::Number.number(10)}",sex: Faker::Number.rand(3), people_id: "#{Faker::Number.number(9)}",
      nation: "kinh", religion: "không", identification_number: Faker::Code.asin, nationality: "Việt Nam",
      birthday: Faker::Date.between(50.years.ago, 40.years.ago), year: DateTime.now.year

    1.upto(100) do |x|
      name = Faker::Name.name
      email = "user#{x}@gmail.com"
      address = "Hai chau, Da Nang"
      pass = "123456"
      pass_conf = "123456"
      role = 0
      phone = Faker::PhoneNumber.cell_phone
      sex = Faker::Number.rand(3)
      people_id = "#{Faker::Number.number(9)}"
      nation = "kinh"
      nationality = "Việt Nam"
      identification_number = "#{Faker::Code.asin}-#{x}"
      religion = "không"
      birthday = Faker::Date.between(20.years.ago, 18.years.ago)
      User.create! name: name, email: email, password: pass, year: DateTime.now.year,
        password_confirmation: pass_conf, role: role, address: address, phone: phone,
        sex: sex, people_id: people_id, nation: nation, nationality: nationality,
        birthday: birthday, identification_number: identification_number, religion: religion, school_id: Faker::Number.rand(5)
    end

    dtdn = School.create! name: "Đại học Duy Tân", address: "254 Nguyễn Văn Linh",
      phone: "(+84) 236.3650403 - (+84) 236.3827111", email: "duytan@dtu.edu.vn", code: "DTU",
      url_school: "duytan.edu.vn", introducing: "Đào tạo, Nghiên cứu gắn liền với Khoa học và Công nghệ nhằm tạo ra
      những Sinh viên và Học viên có lòng yêu nước, có phẩm chất Nhân văn mang đậm Bản sắc Việt Nam,
      có ý thức sinh hoạt cộng đồng, có sức khỏe, có năng lực và kỹ năng toàn diện,
      tự tin, năng động, sáng tạo và trở thành công dân khởi nghiệp mang tính toàn cầu.",
      level: 0, city: "Đà Nẵng"

    nndn = School.create! name: "Đại Học Ngoại Ngữ", address: "254 Nguyễn Văn Linh",
      phone: "(+84) 236.3650403 - (+84) 236.3827111", code: "ULF", url_school: "duytan.edu.vn",
      introducing: "Đào tạo, Nghiên cứu gắn liền với Khoa học và Công nghệ nhằm tạo ra
      những Sinh viên và Học viên có lòng yêu nước, có phẩm chất Nhân văn mang đậm Bản sắc Việt Nam,
      có ý thức sinh hoạt cộng đồng, có sức khỏe, có năng lực và kỹ năng toàn diện,
      tự tin, năng động, sáng tạo và trở thành công dân khởi nghiệp mang tính toàn cầu.",
      level: 0, city: "Đà Nẵng"

    spdn = School.create! name: "Đại Học Sư Phạm", address: "495 Tôn Đức Thắng", phone: "(052)3824052",
      code:"UED", url_school: "quangbinhuni.edu.vn", introducing: "Trường Đại học Sư phạm - Đại học Đà Nẵng
      thực hiện trọng trách đào tạo, bồi dưỡng nguồn nhân lực chất lượng cao và nghiên cứu khoa học, chuyển
      giao công nghệ trên các lĩnh vực khoa học giáo dục, khoa học tự nhiên và công nghệ, khoa học xã hội và
      nhân văn; phục vụ cộng đồng với cam kết đảm bảo chất lượng giáo dục, hội nhập quốc tế.",
      level: 0, city: "Đà Nẵng"

    StyleMajor.create! name: "Khoa học" #1
    StyleMajor.create! name: "Ngôn ngữ" #2
    StyleMajor.create! name: "Tâm lý học" #3
    StyleMajor.create! name: "Địa lý học" #4
    StyleMajor.create! name: "Báo chí và truyền thông" #5
    StyleMajor.create! name: "Kinh doanh" #6
    StyleMajor.create! name: "Quản trị - Quản lý" #7
    StyleMajor.create! name: "Luật" #8
    StyleMajor.create! name: "Sinh học" #9
    StyleMajor.create! name: "Toán học" #10
    StyleMajor.create! name: "Máy tính" #11
    StyleMajor.create! name: "điện tử" #12
    StyleMajor.create! name: "Xây dựng" #13
    StyleMajor.create! name: "Nông nghiệp" #14
    StyleMajor.create! name: "Lâm nghiệp" #15
    StyleMajor.create! name: "Thủy sản" #16
    StyleMajor.create! name: "Sức khỏe" #17
    StyleMajor.create! name: "Công nhiệp" #18
    StyleMajor.create! name: "Thể dục, thể thao" #19
    StyleMajor.create! name: "Quản lý tài nguyên và môi trường" #20

    dt1 = Major.create! name: "Kỹ thuật Mạng máy tính", school_id: dtdn.id, code: "A7420201", introducing: "", style_major_id: 11
    dt2 = Major.create! name: "Công nghệ Phần mềm", school_id: dtdn.id, code: "A7480201", style_major_id: 11
    dt3 = Major.create! name: "Điều dưỡng đa khoa", school_id: dtdn.id, code: "A74245435", introducing: "", style_major_id: 11
    dt4 = Major.create! name: "Dược sỹ (Đại học)", school_id: dtdn.id, code: "A7420345", introducing: "", style_major_id: 11
    dt5 = Major.create! name: "Bác sĩ đa khoa", school_id: dtdn.id, code: "A742056", introducing: "", style_major_id: 11
    dt6 = Major.create! name: "Công nghệ Phần mềm CMU", school_id: dtdn.id, code: "A742024", introducing: "", style_major_id: 11
    dt7 = Major.create! name: "Big Data & Machine Learning", school_id: dtdn.id, code: "A7520114", introducing: "", style_major_id: 11
    dt8 = Major.create! name: "Thiết kế Đồ họa /Game/Multimedia", school_id: dtdn.id, code: "A7520115", introducing: "", style_major_id: 11
    dt9 = Major.create! name: "Hệ thống thông tin ", school_id: dtdn.id, code: "A7520122", introducing: "", style_major_id: 18
    dt10 = Major.create! name: "Công nghệ Kỹ thuật điện, điện tử", school_id: dtdn.id, code: "A7520201", introducing: "", style_major_id: 12
    dt11 = Major.create! name: "Điện tự động", school_id: dtdn.id, code: "A7520207", introducing: "", style_major_id: 12
    dt12 = Major.create! name: "Hệ thống Nhúng", school_id: dtdn.id, code: "A7520216", introducing: "", style_major_id: 12
    dt13 = Major.create! name: "Điện tử - Viễn thông", school_id: dtdn.id, code: "A7520301", introducing: "", style_major_id: 12
    dt14 = Major.create! name: "Quản trị Kinh doanh Tổng hợp", school_id: dtdn.id, code: "A7520320", introducing: "", style_major_id: 7
    dt15 = Major.create! name: "Quản trị Kinh doanh Marketing", school_id: dtdn.id, code: "A7510701CLC", introducing: "", style_major_id: 7
    dt16 = Major.create! name: "Ngoại thương (QTKD Quốc tế)", school_id: dtdn.id, code: "A7540101", introducing: "", style_major_id: 7
    dt17 = Major.create! name: "Kinh doanh thương mại", school_id: dtdn.id, code: "A7580101", introducing: "", style_major_id: 7
    dt18 = Major.create! name: "Tài chính doanh nghiệp", school_id: dtdn.id, code: "A7580201A", introducing: "", style_major_id: 7
    dt19 = Major.create! name: "Ngân hàng", school_id: dtdn.id, code: "A7505206", introducing: "", style_major_id: 12
    dt20 = Major.create! name: "Kế toán Kiểm toán", school_id: dtdn.id, code: "A7905216", introducing: "", style_major_id: 12
    dt21 = Major.create! name: " Kế toán doanh nghiệp", school_id: dtdn.id, code: "A7140214", introducing: "", style_major_id: 12
    dt22 = Major.create! name: "Xây dựng Dân dụng & Công nghiệp", school_id: dtdn.id, code: "A20207", introducing: "", style_major_id: 13
    dt23 = Major.create! name: "Xây dựng cầu đường", school_id: dtdn.id, code: "A220216", introducing: "", style_major_id: 13

    Major.create! name: "Sư phạm Tiếng Anh", school_id: nndn.id, code: "D52140201", introducing: "", style_major_id: rand(1..20)
    Major.create! name: "Sư phạm Tiếng Nga", school_id: nndn.id, code: "D52140202", introducing: "", style_major_id: rand(1..20)
    Major.create! name: "Sư phạm Tiếng Pháp", school_id: nndn.id, code: "D52140206", introducing: "", style_major_id: rand(1..20)
    Major.create! name: "Sư phạm Tiếng Trung Quốc", school_id: nndn.id, code: "D52140209", introducing: "", style_major_id: rand(1..20)
    Major.create! name: "Ngôn ngữ Anh", school_id: nndn.id, code: "D52140211", introducing: "", style_major_id: rand(1..20)
    Major.create! name: "Ngôn ngữ Nga", school_id: nndn.id, code: "D52140213", introducing: "", style_major_id: rand(1..20)
    Major.create! name: "Ngôn ngữ Pháp", school_id: nndn.id, code: "D52140218", introducing: "", style_major_id: rand(1..20)
    Major.create! name: "Ngôn ngữ Trung Quốc", school_id: nndn.id, code: "D52340201", introducing: "", style_major_id: rand(1..20)
    Major.create! name: "Ngôn ngữ Nhật", school_id: nndn.id, code: "D52340101", introducing: "", style_major_id: rand(1..20)
    Major.create! name: "Ngôn ngữ Hàn Quốc", school_id: nndn.id, code: "D52480103", introducing: "", style_major_id: rand(1..20)
    Major.create! name: "Ngôn ngữ Thái Lan", school_id: nndn.id, code: "D52480201", introducing: "", style_major_id: rand(1..20)
    Major.create! name: "Quốc tế học", school_id: nndn.id, code: "D52520201", introducing: "", style_major_id: rand(1..20)
    Major.create! name: "Tiếng Việt và văn hoá Việt Nam", school_id: nndn.id, code: "D5265464", introducing: "D52620201", style_major_id: rand(1..20)
    Major.create! name: "Đông phương học", school_id: nndn.id, code: "D52850101", introducing: "", style_major_id: rand(1..20)

    sp1 = Major.create! name: "Giáo dục Tiểu học", school_id: spdn.id, code: "N52140202", introducing: "", style_major_id: rand(1..20)
    sp2 = Major.create! name: "Giáo dục Chính trị", school_id: spdn.id, code: "N52140205", introducing: "", style_major_id: rand(1..20)
    sp3 = Major.create! name: "Sư phạm Toán học", school_id: spdn.id, code: "N52140209", introducing: "", style_major_id: rand(1..20)
    sp4 = Major.create! name: "Sư phạm Tin học", school_id: spdn.id, code: "N52140210", introducing: "", style_major_id: rand(1..20)
    sp5 = Major.create! name: "Sư phạm Vật lý", school_id: spdn.id, code: "N52140211", introducing: "", style_major_id: rand(1..20)
    sp6 = Major.create! name: "Sư phạm Hóa học", school_id: spdn.id, code: "N52140212", introducing: "", style_major_id: rand(1..20)
    sp7 = Major.create! name: "Sư phạm Sinh học", school_id: spdn.id, code: "N52140213", introducing: "", style_major_id: rand(1..20)
    sp8 = Major.create! name: "Sư phạm Ngữ văn", school_id: spdn.id, code: "N52140217", introducing: "", style_major_id: rand(1..20)
    sp9 = Major.create! name: "Sư phạm Lịch sử", school_id: spdn.id, code: "N52140218", introducing: "", style_major_id: rand(1..20)
    sp10 = Major.create! name: "Sư phạm Địa lý", school_id: spdn.id, code: "N52140219", introducing: "", style_major_id: rand(1..20)
    sp11 = Major.create! name: "Gíao dục Mầm non", school_id: spdn.id, code: "N52140201", introducing: "", style_major_id: rand(1..20)
    sp12 = Major.create! name: "Sư phạm Âm nhạc", school_id: spdn.id, code: "N52140221", introducing: "", style_major_id: rand(1..20)
    sp13 = Major.create! name: "Việt Nam học", school_id: spdn.id, code: "N52220113", introducing: "", style_major_id: rand(1..20)
    sp14 = Major.create! name: "Lịch sử", school_id: spdn.id, code: "N52220310", introducing: "", style_major_id: rand(1..20)
    sp15 = Major.create! name: "Văn học", school_id: spdn.id, code: "N52220320", introducing: "", style_major_id: rand(1..20)
    sp16 = Major.create! name: "Văn hóa học", school_id: spdn.id, code: "N52220340", introducing: "", style_major_id: rand(1..20)
    sp17 = Major.create! name: "Tâm lý học", school_id: spdn.id, code: "N52310401", introducing: "", style_major_id: rand(1..20)
    sp18 = Major.create! name: "Địa lý học", school_id: spdn.id, code: "N52310501", introducing: "", style_major_id: rand(1..20)
    sp19 = Major.create! name: "Báo chí", school_id: spdn.id, code: "N52320101", introducing: "", style_major_id: rand(1..20)
    sp20 = Major.create! name: "Công nghệ sinh học", school_id: spdn.id, code: "N52420201", introducing: "", style_major_id: rand(1..20)
    sp21 = Major.create! name: "Vật lý học", school_id: spdn.id, code: "N52440102", introducing: "", style_major_id: rand(1..20)
    sp22 = Major.create! name: "Khoa học môi trường", school_id: spdn.id, code: "N52440201", introducing: "", style_major_id: rand(1..20)
    sp23 = Major.create! name: "Toán ứng dụng", school_id: spdn.id, code: "N52460112", introducing: "", style_major_id: rand(1..20)
    sp24 = Major.create! name: "Công nghệ thông tin", school_id: spdn.id, code: "N52480201", introducing: "", style_major_id: rand(1..20)
    sp25 = Major.create! name: "Công tác xã hội", school_id: spdn.id, code: "N52760101", introducing: "", style_major_id: rand(1..20)
    sp26 = Major.create! name: "Quản lý tài nguyên và môi trường", school_id: spdn.id, code: "N52850101", introducing: "", style_major_id: rand(1..20)

    toan = Subject.create! name: "Toán", code: "toan"
    ly = Subject.create! name: "Vật Lý", code: "ly"
    hoa = Subject.create! name: "Hóa Học", code: "hoa"
    sinh = Subject.create! name: "Sinh Học", code: "sinh"
    su = Subject.create! name: "Lịch Sử", code: "su"
    dia = Subject.create! name: "Địa Lý", code: "dia"
    van = Subject.create! name: "Ngữ Văn", code: "van"
    anh = Subject.create! name: "Tiếng Anh", code: "anh"
    nangkhieu = Subject.create! name: "Năng Khiếu", code: "nangkhieu"

    a = Department.create!(name: "A")
    a1 = Department.create!(name: "A1")
    b = Department.create!(name: "B")
    c = Department.create!(name: "C")
    d1 = Department.create!(name: "D1")
    d7 = Department.create!(name: "D7")
    v = Department.create!(name: "V1")

    a.subject_departments.create! subject_id: toan.id
    a.subject_departments.create! subject_id: ly.id
    a.subject_departments.create! subject_id: hoa.id
    a1.subject_departments.create! subject_id: toan.id
    a1.subject_departments.create! subject_id: ly.id
    a1.subject_departments.create! subject_id: anh.id
    b.subject_departments.create! subject_id: toan.id
    b.subject_departments.create! subject_id: hoa.id
    b.subject_departments.create! subject_id: sinh.id
    c.subject_departments.create! subject_id: van.id
    c.subject_departments.create! subject_id: su.id
    c.subject_departments.create! subject_id: dia.id
    d1.subject_departments.create! subject_id: van.id
    d1.subject_departments.create! subject_id: toan.id
    d1.subject_departments.create! subject_id: anh.id
    d7.subject_departments.create! subject_id: hoa.id
    d7.subject_departments.create! subject_id: toan.id
    d7.subject_departments.create! subject_id: anh.id
    v.subject_departments.create! subject_id: nangkhieu.id
    v.subject_departments.create! subject_id: toan.id
    v.subject_departments.create! subject_id: van.id

    [a.id, b.id].each do |id|
      dt1.major_departments.create! department_id: id
    end
    [a.id, a1.id].each do |id|
      dt3.major_departments.create! department_id: id
      dt2.major_departments.create! department_id: id
      dt4.major_departments.create! department_id: id
      dt5.major_departments.create! department_id: id
      dt6.major_departments.create! department_id: id
      dt7.major_departments.create! department_id: id
      dt8.major_departments.create! department_id: id
      dt9.major_departments.create! department_id: id
      dt10.major_departments.create! department_id: id
      dt11.major_departments.create! department_id: id
      dt22.major_departments.create! department_id: id
      dt12.major_departments.create! department_id: id
      dt23.major_departments.create! department_id: id
      dt18.major_departments.create! department_id: id
      dt19.major_departments.create! department_id: id
      dt20.major_departments.create! department_id: id
      dt21.major_departments.create! department_id: id
    end
    [a.id, d7.id].each do |id|
      dt13.major_departments.create! department_id: id
      dt14.major_departments.create! department_id: id
      dt15.major_departments.create! department_id: id
    end
    [a.id, b.id, d7.id].each do |id|
      dt16.major_departments.create! department_id: id
      dt16.major_departments.create! department_id: id
      dt16.major_departments.create! department_id: id
      dt16.major_departments.create! department_id: id
    end
    [v.id].each do |id|
      dt17.major_departments.create! department_id: id
    end

    [d1.id].each do |id|
      sp1.major_departments.create! department_id: id
    end
    sp2.major_departments.create! department_id: c.id
    [a.id, a1.id].each do|id|
      sp3.major_departments.create! department_id: id
      sp4.major_departments.create! department_id: id
      sp5.major_departments.create! department_id: id
      sp21.major_departments.create! department_id: id
      sp23.major_departments.create! department_id: id
      sp24.major_departments.create! department_id: id
    end
    [a.id, b.id].each do |id|
      sp6.major_departments.create! department_id: id
      sp16.major_departments.create! department_id: id
      sp19.major_departments.create! department_id: id
      sp22.major_departments.create! department_id: id
    end
    sp7.major_departments.create! department_id: b.id
    [c.id, d1.id].each do |id|
      sp8.major_departments.create! department_id: id
      sp9.major_departments.create! department_id: id
      sp10.major_departments.create! department_id: id
      sp11.major_departments.create! department_id: id
      sp13.major_departments.create! department_id: id
      sp14.major_departments.create! department_id: id
      sp15.major_departments.create! department_id: id
      sp17.major_departments.create! department_id: id
      sp18.major_departments.create! department_id: id
      sp19.major_departments.create! department_id: id
      sp25.major_departments.create! department_id: id
    end
    sp26.major_departments.create! department_id: b.id

    User.student.each do |s|
      array = [toan.id, van.id, anh.id]
      array.each do |n|
        s.results.create! subject_id: n, mark: Faker::Number.rand(1.0..10.0).round(1)
      end
      array1 = [hoa.id, dia.id]
      array2 = [ly.id, su.id]
      array3 = [sinh.id, nangkhieu.id]
      s.results.create! subject_id: array1.sample, mark: Faker::Number.rand(1.0..10.0).round(1)
      s.results.create! subject_id: array2.sample, mark: Faker::Number.rand(1.0..10.0).round(1)
      s.results.create! subject_id: array3.sample, mark: Faker::Number.rand(1.0..10.0).round(1)
    end

    Major.all.each do |m|
      m.targets.create! amount: Faker::Number.rand(50..100), year: 2016,
        benchmark: Faker::Number.rand(15..30),job: Faker::Number.rand(0.0..1.0).round(2)
      m.targets.create! amount: Faker::Number.rand(50..100), year: 2017,
        benchmark: Faker::Number.rand(15..30), job: Faker::Number.rand(0.0..1.0).round(2)
      m.targets.create! amount: Faker::Number.rand(50..100), year: 2018,
        job: Faker::Number.rand(0.0..1.0).round(2)
    end

    User.student.each do |u|
      department_ids = u.find_user_departments
      major_ids = MajorDepartment.get_by_depart(department_ids).pluck :major_id
      1.upto(3) do |n|
        major_id = major_ids.sample
        next if major_id.blank?
        major_ids.delete major_id
        get_department = RegistersService.new u, major_id
        u.registers.create! major_id: major_id, department_id: get_department.get_best_depart,
          aspiration: (n-1), mark: get_department.get_mark_from_depart
      end
    end

    Note.create! start_time: 10.days.ago, end_time: 1.months.from_now, style: 0

    Note.create! start_time: 5.days.ago, end_time: 2.months.from_now, style: 1

    User.student.limit(20).each do |user|
      school_id = user.registers.first ? user.registers.first.school.id : 1
      file_remarking = user.file_remarkings.build school_id: school_id
      remarkings_ids = {"#{user.results.first.id}" => Faker::Lorem.sentence(50),
        "#{user.results.second.id}" => Faker::Lorem.sentence(50)}
      file_remarking.self_attr_after_create remarkings_ids
      file_remarking.save!
    end

;; Rubén Cantarero Navarro 2015
;; University example

(new-members {university} '({UCLM} "Universidad de Castilla La-Mancha")) ;see ~/scone/kb/core-components
(new-type-role {centre}{university}{organization}
	       :may-have t) ;may-have t --> a university may or may not have any center
(new-type-role {department}{university}{organization}
	       :may-have t)

(new-type-role {university centre} {university} {organization})
(new-type-role {faculty}{university}{university centre})
(new-type-role {university school}{university}{university centre})
(new-type-role {emplacement} {university centre} {organization})
(new-split '({faculty} {university school}))

(new-type-role {headquarter} {university} {centre})
(new-type-role {campus} {university} {centre})
(new-type-role {research institute} {university} {centre})
(new-split '({campus} {headquarter} {research institute})) ;one center can only be either a campus or headquarter

(new-relation {teach}
	      :a-inst-of {department}
	      :b-inst-of {university centre})

;At the University of Castilla La Mancha there are four campus
(new-indv {Campus Albacete}{organization})
(new-indv {Campus Toledo}{organization})
(new-indv {Campus Ciudad Real}{organization})
(new-indv {Campus Cuenca}{organization})

;We associate the four campus to the University of Castilla La Mancha
(x-is-a-y-of-z {Campus Albacete} {campus} {UCLM})
(x-is-a-y-of-z {Campus Toledo} {campus} {UCLM})
(x-is-a-y-of-z {Campus Ciudad Real} {campus} {UCLM})
(x-is-a-y-of-z {Campus Cuenca} {campus} {UCLM})

;At the University of Castilla La Mancha there are two headquarters
(new-indv {Almadén}{organization})
(new-indv {Talavera de la Reina}{organization})

;We associate the two headquarters to the University of Castilla La Mancha
(x-is-a-y-of-z  {Almadén} {headquarter} {UCLM})
(x-is-a-y-of-z  {Talavera de la Reina} {headquarter} {UCLM})

;At the University of Castilla La Mancha there are twenty-six research institutes
(new-indv {Centro de Almagro de Teatro Clásico}{organization})
(new-indv {Centro de Creación Experimental y Arte Sonoro}{organization})
(new-indv {Centro de Estudios de Castilla-La Mancha}{organization})
(new-indv {Centro de Estudios y Documentación de las Brigadas Internacionales}{organization})
(new-indv {Centro de Estudios de Promoción de la Lectura y Literatura Infantil}{organization})
(new-indv {Centro de Estudios del Consumo}{organization})
(new-indv {Centro de Estudios Sociosanitarios (CESS)}{organization})
(new-indv {Centro de Estudios Territoriales Iberoamericanos}{organization})
(new-indv {Centro Europeo y Latinoamericano para el Diálogo Social}{organization})
(new-indv {Instituto Regional de Investigación Científica Aplicada (IRICA)}{organization})
(new-indv {Centro de Investigación en Criminología}{organization})
(new-indv {Centro Internacional de Estudios Fiscales}{organization})
(new-indv {Centro Regional de Estudios del Agua}{organization})
(new-indv {Centro Regional de Investigaciones Biomédicas}{organization})
(new-indv {Escuela de Traductores de Toledo}{organization})
(new-indv {Instituto Botánico de Castilla-La Mancha}{organization})
(new-indv {Instituto de Ciencias Ambientales de Toledo}{organization})
(new-indv {Instituto de Derecho y Justicia Penal}{organization})
(new-indv {Instituto de Desarrollo Regional}{organization})
(new-indv {Instituto de Estudios Avanzados de la Comunicación Audiovisual. ICA}{organization})
(new-indv {Instituto de Investigación en Discapacidades Neurológicas}{organization})
(new-indv {Instituto de Investigación en Energías Renovables}{organization})
(new-indv {Instituto de Investigación en Informática de Albacete}{organization})
(new-indv {Instituto de Matemática Aplicada a la Ciencia y la Ingeniería}{organization})
(new-indv {Instituto de Resolución de Conflictos (IRC)}{organization})
(new-indv {Instituto de Tecnología Química y Medioambiental de Ciudad Real}{organization})

;We associate the twenty-six research institutes to the University of Castilla La Mancha
(x-is-a-y-of-z  {Centro de Almagro de Teatro Clásico} {research institute} {UCLM})
(x-is-a-y-of-z  {Centro de Creación Experimental y Arte Sonoro} {research institute} {UCLM})
(x-is-a-y-of-z  {Centro de Estudios de Castilla-La Mancha} {research institute} {UCLM})
(x-is-a-y-of-z  {Centro de Estudios y Documentación de las Brigadas Internacionales} {research institute} {UCLM})
(x-is-a-y-of-z  {Centro de Estudios de Promoción de la Lectura y Literatura Infantil} {research institute} {UCLM})
(x-is-a-y-of-z  {Centro de Estudios del Consumo} {research institute} {UCLM})
(x-is-a-y-of-z  {Centro de Estudios Sociosanitarios (CESS)} {research institute} {UCLM})
(x-is-a-y-of-z  {Centro de Estudios Territoriales Iberoamericanos} {research institute} {UCLM})
(x-is-a-y-of-z  {Centro Europeo y Latinoamericano para el Diálogo Social} {research institute} {UCLM})
(x-is-a-y-of-z  {Instituto Regional de Investigación Científica Aplicada (IRICA)} {research institute} {UCLM})
(x-is-a-y-of-z  {Centro de Investigación en Criminología} {research institute} {UCLM})
(x-is-a-y-of-z  {Centro Internacional de Estudios Fiscales} {research institute} {UCLM})
(x-is-a-y-of-z  {Centro Regional de Estudios del Agua} {research institute} {UCLM})
(x-is-a-y-of-z  {Centro Regional de Investigaciones Biomédicas} {research institute} {UCLM})
(x-is-a-y-of-z  {Escuela de Traductores de Toledo} {research institute} {UCLM})
(x-is-a-y-of-z  {Instituto Botánico de Castilla-La Mancha} {research institute} {UCLM})
(x-is-a-y-of-z  {Instituto de Ciencias Ambientales de Toledo} {research institute} {UCLM})
(x-is-a-y-of-z  {Instituto de Derecho y Justicia Penal} {research institute} {UCLM})
(x-is-a-y-of-z  {Instituto de Desarrollo Regional} {research institute} {UCLM})
(x-is-a-y-of-z  {Instituto de Estudios Avanzados de la Comunicación Audiovisual. ICA} {research institute} {UCLM})
(x-is-a-y-of-z  {Instituto de Investigación en Discapacidades Neurológicas} {research institute} {UCLM})
(x-is-a-y-of-z  {Instituto de Investigación en Energías Renovables} {research institute} {UCLM})
(x-is-a-y-of-z  {Instituto de Investigación en Informática de Albacete} {research institute} {UCLM})
(x-is-a-y-of-z  {Instituto de Matemática Aplicada a la Ciencia y la Ingeniería} {research institute} {UCLM})
(x-is-a-y-of-z  {Instituto de Resolución de Conflictos (IRC)} {research institute} {UCLM})
(x-is-a-y-of-z  {Instituto de Tecnología Química y Medioambiental de Ciudad Real} {research institute} {UCLM})

;At the University of Castilla La Mancha there are thirty-five departments
(new-indv {Arte}{organization})
(new-indv {Administración de Empresas}{organization})
(new-indv {Análisis Económico y Finanzas}{organization})
(new-indv {Ciencias Ambientales}{organization})
(new-indv {Ciencia Jurídica y Derecho Público}{organization})
(new-indv {Ciencias Médicas}{organization})
(new-indv {Ciencia y Tecnología Agroforestal}{organization})
(new-indv {Derecho del Trabajo y Trabajo Social}{organization})
(new-indv {Derecho Civil e Internacional Privado}{organization})
(new-indv {Derecho Público y de la Empresa}{organization})
(new-indv {Didáctica de la Expresión Musical, Plástica y Corporal}{organization})
(new-indv {Economía Española e Internacional, Econometría e Historia de las Instituciones Económicas}{organization})
(new-indv {Economía Política y Hacienda Pública, Estadística Económica y Empresarial y Política Económica}{organization})
(new-indv {Enfermería y Fisioterapia}{organization})
(new-indv {Filología Hispánica y Clásica}{organization})
(new-indv {Filología Moderna}{organization})
(new-indv {Filosofía, Antropología, Sociología y Estética}{organization})
(new-indv {Física Aplicada}{organization})
(new-indv {Geografía y Ordenación del Territorio}{organization})
(new-indv {Historia}{organization})
(new-indv {Historia del Arte}{organization})
(new-indv {Ingeniería Civil y de la Edificación}{organization})
(new-indv {Ingeniería eléctrica, electrónica, automática y comunicaciones}{organization})
(new-indv {Ingeniería Química}{organization})
(new-indv {Ingeniería Geológica y Minera}{organization})
(new-indv {Matemáticas}{organization})
(new-indv {Mecánica Aplicada e Ingeniería de Proyectos}{organization})
(new-indv {Pedagogía}{organization})
(new-indv {Producción Vegetal y Tecnología Agraria}{organization})
(new-indv {Psicología}{organization})
(new-indv {Química Analítica y Tecnología de los Alimentos}{organization})
(new-indv {Química-Física}{organization})
(new-indv {Química Inorgánica, Orgánica y Bioquímica}{organization})
(new-indv {Sistemas Informáticos}{organization})
(new-indv {Tecnologías y Sistemas de Información}{organization})

;We associate the thirty-five departments to the University of Castilla La Mancha
(x-is-a-y-of-z {Arte}{department} {UCLM})
(x-is-a-y-of-z {Administración de Empresas}{department} {UCLM})
(x-is-a-y-of-z {Análisis Económico y Finanzas}{department} {UCLM})
(x-is-a-y-of-z {Ciencias Ambientales}{department} {UCLM})
(x-is-a-y-of-z {Ciencia Jurídica y Derecho Público}{department} {UCLM})
(x-is-a-y-of-z {Ciencias Médicas}{department} {UCLM})
(x-is-a-y-of-z {Ciencia y Tecnología Agroforestal}{department} {UCLM})
(x-is-a-y-of-z {Derecho del Trabajo y Trabajo Social}{department} {UCLM})
(x-is-a-y-of-z {Derecho Civil e Internacional Privado}{department} {UCLM})
(x-is-a-y-of-z {Derecho Público y de la Empresa}{department} {UCLM})
(x-is-a-y-of-z {Didáctica de la Expresión Musical, Plástica y Corporal}{department} {UCLM})
(x-is-a-y-of-z {Economía Española e Internacional, Econometría e Historia de las Instituciones Económicas}{department} {UCLM})
(x-is-a-y-of-z {Economía Política y Hacienda Pública, Estadística Económica y Empresarial y Política Económica}{department} {UCLM})
(x-is-a-y-of-z {Enfermería y Fisioterapia}{department} {UCLM})
(x-is-a-y-of-z {Filología Hispánica y Clásica}{department} {UCLM})
(x-is-a-y-of-z {Filología Moderna}{department} {UCLM})
(x-is-a-y-of-z {Filosofía, Antropología, Sociología y Estética}{department} {UCLM})
(x-is-a-y-of-z {Física Aplicada}{department} {UCLM})
(x-is-a-y-of-z {Geografía y Ordenación del Territorio}{department} {UCLM})
(x-is-a-y-of-z {Historia}{department} {UCLM})
(x-is-a-y-of-z {Historia del Arte}{department} {UCLM})
(x-is-a-y-of-z {Ingeniería Civil y de la Edificación}{department} {UCLM})
(x-is-a-y-of-z {Ingeniería eléctrica, electrónica, automática y comunicaciones}{department} {UCLM})
(x-is-a-y-of-z {Ingeniería Química}{department} {UCLM})
(x-is-a-y-of-z {Ingeniería Geológica y Minera}{department} {UCLM})
(x-is-a-y-of-z {Matemáticas}{department} {UCLM})
(x-is-a-y-of-z {Mecánica Aplicada e Ingeniería de Proyectos}{department} {UCLM})
(x-is-a-y-of-z {Pedagogía}{department} {UCLM})
(x-is-a-y-of-z {Producción Vegetal y Tecnología Agraria}{department} {UCLM})
(x-is-a-y-of-z {Psicología}{department} {UCLM})
(x-is-a-y-of-z {Química Analítica y Tecnología de los Alimentos}{department} {UCLM})
(x-is-a-y-of-z {Química-Física}{department} {UCLM})
(x-is-a-y-of-z {Química Inorgánica, Orgánica y Bioquímica}{department} {UCLM})
(x-is-a-y-of-z {Sistemas Informáticos}{department} {UCLM})
(x-is-a-y-of-z {Tecnologías y Sistemas de Información}{department} {UCLM})

;At the University of Castilla La Mancha there are twenty-five faculties
(new-indv {Facultad de Medicina de Albacete}{organization})
(new-indv {Facultad de Ciencias Económicas y Empresariales de Albacete}{organization})
(new-indv {Facultad de Derecho de Albacete}{organization})
(new-indv {Facultad de Humanidades de Albacete}{organization})
(new-indv {Facultad de Enfermería de Albacete}{organization})
(new-indv {Facultad de Educación de Albacete}{organization})
(new-indv {Facultad de Relaciones Laborales y Recursos Humanos de Albacete}{organization})
(new-indv {Facultad de Farmacia de Albacete}{organization})
(new-indv {Facultad de Medicina de Ciudad Real}{organization})
(new-indv {Facultad de Ciencias Químicas de Ciudad Real}{organization})
(new-indv {Facultad de Derecho y Ciencias Sociales de Ciudad Real}{organization})
(new-indv {Facultad de Letras de Ciudad Real}{organization})
(new-indv {Facultad de Educación de Ciudad Real}{organization})
(new-indv {Facultad de Ciencias Sociales de Cuenca}{organization})
(new-indv {Facultad de Bellas Artes de Cuenca}{organization})
(new-indv {Facultad de Ciencias de la Educación y Humanidades de Cuenca}{organization})
(new-indv {Facultad de Educación de Cuenca}{organization})
(new-indv {Facultad de Periodismo de Cuenca}{organization})
(new-indv {Facultad de Ciencias Jurídicas y Sociales de Toledo}{organization})
(new-indv {Facultad de Ciencias del Medio Ambiente y Bioquímica de Toledo}{organization})
(new-indv {Facultad de Ciencias del Deporte de Toledo}{organization})
(new-indv {Facultad de Humanidades de Toledo}{organization})
(new-indv {Facultad de Educación de Toledo}{organization})
(new-indv {Facultad de Terapia Ocupacional, Logopedia y Enfermería de Talavera de la Reina}{organization})
(new-indv {Facultad de Ciencias Sociales de Talavera de la Reina}{organization})

;We associate the twenty-five faculties with its corresponding campus or headquarters
(x-is-a-y-of-z {Facultad de Medicina de Albacete}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Ciencias Económicas y Empresariales de Albacete}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Derecho de Albacete}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Humanidades de Albacete}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Enfermería de Albacete}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Educación de Albacete}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Relaciones Laborales y Recursos Humanos de Albacete}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Farmacia de Albacete}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Medicina de Ciudad Real}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Ciencias Químicas de Ciudad Real}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Derecho y Ciencias Sociales de Ciudad Real}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Letras de Ciudad Real}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Educación de Ciudad Real}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Ciencias Sociales de Cuenca}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Bellas Artes de Cuenca}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Ciencias de la Educación y Humanidades de Cuenca}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Educación de Cuenca}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Periodismo de Cuenca}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Ciencias Jurídicas y Sociales de Toledo}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Ciencias del Medio Ambiente y Bioquímica de Toledo}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Ciencias del Deporte de Toledo}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Humanidades de Toledo}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Educación de Toledo}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Terapia Ocupacional, Logopedia y Enfermería de Talavera de la Reina}{faculty}{uclm})
(x-is-a-y-of-z {Facultad de Ciencias Sociales de Talavera de la Reina}{faculty}{uclm})


(x-is-a-y-of-z {Campus Albacete}{emplacement}{Facultad de Medicina de Albacete})
(x-is-a-y-of-z {Campus Albacete}{emplacement}{Facultad de Ciencias Económicas y Empresariales de Albacete})
(x-is-a-y-of-z {Campus Albacete}{emplacement}{Facultad de Derecho de Albacete})
(x-is-a-y-of-z {Campus Albacete}{emplacement}{Facultad de Humanidades de Albacete})
(x-is-a-y-of-z {Campus Albacete}{emplacement}{Facultad de Enfermería de Albacete})
(x-is-a-y-of-z {Campus Albacete}{emplacement}{Facultad de Educación de Albacete})
(x-is-a-y-of-z {Campus Albacete}{emplacement}{Facultad de Relaciones Laborales y Recursos Humanos de Albacete})
(x-is-a-y-of-z {Campus Albacete}{emplacement}{Facultad de Farmacia de Albacete})
(x-is-a-y-of-z {Campus Ciudad Real}{emplacement}{Facultad de Medicina de Ciudad Real})
(x-is-a-y-of-z {Campus Ciudad Real}{emplacement}{Facultad de Ciencias Químicas de Ciudad Real})
(x-is-a-y-of-z {Campus Ciudad Real}{emplacement}{Facultad de Derecho y Ciencias Sociales de Ciudad Real})
(x-is-a-y-of-z {Campus Ciudad Real}{emplacement}{Facultad de Letras de Ciudad Real})
(x-is-a-y-of-z {Campus Ciudad Real}{emplacement}{Facultad de Educación de Ciudad Real})
(x-is-a-y-of-z {Campus Cuenca}{emplacement}{Facultad de Ciencias Sociales de Cuenca})
(x-is-a-y-of-z {Campus Cuenca}{emplacement}{Facultad de Bellas Artes de Cuenca})
(x-is-a-y-of-z {Campus Cuenca}{emplacement}{Facultad de Ciencias de la Educación y Humanidades de Cuenca})
(x-is-a-y-of-z {Campus Cuenca}{emplacement}{Facultad de Educación de Cuenca})
(x-is-a-y-of-z {Campus Cuenca}{emplacement}{Facultad de Periodismo de Cuenca})
(x-is-a-y-of-z {Campus Toledo}{emplacement}{Facultad de Ciencias Jurídicas y Sociales de Toledo})
(x-is-a-y-of-z {Campus Toledo}{emplacement}{Facultad de Ciencias del Medio Ambiente y Bioquímica de Toledo})
(x-is-a-y-of-z {Campus Toledo}{emplacement}{Facultad de Ciencias del Deporte de Toledo})
(x-is-a-y-of-z {Campus Toledo}{emplacement}{Facultad de Humanidades de Toledo})
(x-is-a-y-of-z {Campus Toledo}{emplacement}{Facultad de Educación de Toledo})
(x-is-a-y-of-z {Talavera de la Reina}{emplacement}{Facultad de Terapia Ocupacional, Logopedia y Enfermería de Talavera de la Reina})
(x-is-a-y-of-z {Talavera de la Reina}{emplacement}{Facultad de Ciencias Sociales de Talavera de la Reina})


;We associate the twenty-five faculties with its corresponding department of the UCLM

(new-statement {Matemáticas}{teach}{Facultad de Ciencias Económicas y Empresariales de Albacete})


;At the University of Castilla La Mancha there are fifteen schools
(new-indv {Escuela Técnica Superior de Ingenieros Agrónomos de Albacete}{organization})
(new-indv {Escuela Superior de Ingeniería Informática de Albacete}{organization})
(new-indv {Escuela de Ingenieros Industriales de Albacete}{organization})
(new-indv {Escuela Técnica Superior de Ingenieros de caminos, Canales y Puertos de Ciudad Real}{organization})
(new-indv {Escuela Superior de Informática de Ciudad Real}{organization})
(new-indv {Escuela Técnica Superior de Ingenieros Industriales de Ciudad Real}{organization})
(new-indv {Escuela Universitaria de Ingenieros Técnicos Agrícolas de Ciudad Real}{organization})
(new-indv {Escuela Universitaria de Enfermería de Ciudad Real}{organization})
(new-indv {Escuela Politécnica de Cuenca}{organization})
(new-indv {Escuela Universitaria de Enfermería de Cuenca}{organization})
(new-indv {Escuela Universitaria de Trabajo Social de Cuenca}{organization})
(new-indv {Escuela Universitaria de Turismo de Cuenca}{organization})
(new-indv {Escuela Universitaria de Enfermería y Fisioterapia de Toledo}{organization})
(new-indv {Escuela Universitaria de Ingeniería Técnica Industrial de Toledo}{organization})
(new-indv {Escuela Universitaria de Arquitectura de Toledo}{organization})

;We associate the fifteen schools with its corresponding campus or headquarters
(x-is-a-y-of-z {Escuela Técnica Superior de Ingenieros Agrónomos de Albacete}{university school}{uclm})
(x-is-a-y-of-z {Escuela Superior de Ingeniería Informática de Albacete}{university school}{uclm})
(x-is-a-y-of-z {Escuela de Ingenieros Industriales de Albacete}{university school}{uclm})
(x-is-a-y-of-z {Escuela Técnica Superior de Ingenieros de caminos, Canales y Puertos de Ciudad Real}{university school}{uclm})
(x-is-a-y-of-z {Escuela Superior de Informática de Ciudad Real}{university school}{uclm})
(x-is-a-y-of-z {Escuela Técnica Superior de Ingenieros Industriales de Ciudad Real}{university school}{uclm})
(x-is-a-y-of-z {Escuela Universitaria de Ingenieros Técnicos Agrícolas de Ciudad Real}{university school}{uclm})
(x-is-a-y-of-z {Escuela Universitaria de Enfermería de Ciudad Real}{university school}{uclm})
(x-is-a-y-of-z {Escuela Politécnica de Cuenca}{university school}{uclm})
(x-is-a-y-of-z {Escuela Universitaria de Enfermería de Cuenca}{university school}{uclm})
(x-is-a-y-of-z {Escuela Universitaria de Trabajo Social de Cuenca}{university school}{uclm})
(x-is-a-y-of-z {Escuela Universitaria de Turismo de Cuenca}{university school}{uclm})
(x-is-a-y-of-z {Escuela Universitaria de Enfermería y Fisioterapia de Toledo}{university school}{uclm})
(x-is-a-y-of-z {Escuela Universitaria de Ingeniería Técnica Industrial de Toledo}{university school}{uclm})
(x-is-a-y-of-z {Escuela Universitaria de Arquitectura de Toledo}{university school}{uclm})


(x-is-a-y-of-z {Campus Albacete}{emplacement}{Escuela Técnica Superior de Ingenieros Agrónomos de Albacete})
(x-is-a-y-of-z {Campus Albacete}{emplacement}{Escuela Superior de Ingeniería Informática de Albacete})
(x-is-a-y-of-z {Campus Albacete}{emplacement}{Escuela de Ingenieros Industriales de Albacete})
(x-is-a-y-of-z {Campus Ciudad Real}{emplacement}{Escuela Técnica Superior de Ingenieros de caminos, Canales y Puertos de Ciudad Real})
(x-is-a-y-of-z {Campus Ciudad Real}{emplacement}{Escuela Superior de Informática de Ciudad Real})
(x-is-a-y-of-z {Campus Ciudad Real}{emplacement}{Escuela Técnica Superior de Ingenieros Industriales de Ciudad Real})
(x-is-a-y-of-z {Campus Ciudad Real}{emplacement}{Escuela Universitaria de Ingenieros Técnicos Agrícolas de Ciudad Real})
(x-is-a-y-of-z {Campus Ciudad Real}{emplacement}{Escuela Universitaria de Enfermería de Ciudad Real})
(x-is-a-y-of-z {Campus Cuenca}{emplacement}{Escuela Politécnica de Cuenca})
(x-is-a-y-of-z {Campus Cuenca}{emplacement}{Escuela Universitaria de Enfermería de Cuenca})
(x-is-a-y-of-z {Campus Cuenca}{emplacement}{Escuela Universitaria de Trabajo Social de Cuenca})
(x-is-a-y-of-z {Campus Cuenca}{emplacement}{Escuela Universitaria de Turismo de Cuenca})
(x-is-a-y-of-z {Campus Toledo}{emplacement}{Escuela Universitaria de Enfermería y Fisioterapia de Toledo})
(x-is-a-y-of-z {Campus Toledo}{emplacement}{Escuela Universitaria de Ingeniería Técnica Industrial de Toledo})
(x-is-a-y-of-z {Campus Toledo}{emplacement}{Escuela Universitaria de Arquitectura de Toledo})

;We associate the fifteen schools with its corresponding department of the UCLM
(new-statement {Tecnologías y Sistemas de Información}{teach}{Escuela Superior de Informática de Ciudad Real})
(new-statement {Matemáticas}{teach}{Escuela Superior de Informática de Ciudad Real})
(new-statement {Tecnologías y Sistemas de Información}{teach}{Escuela Superior de Ingeniería Informática de Albacete})

;Types of university members
(new-indv {Rubén Cantarero Navarro}{Graduate student})
(new-indv {David Díaz-Pines Alcázar}{Graduate student})
(new-indv {Javier Dorado Chaparro}{Undergraduate student})
(new-indv {Eulalio Oliver Donoso}{Undergraduate student})
(new-indv {María Teresa Lorenzo}{Staff member})
(new-indv {María José Santofimia Romero}{Faculty member})
(new-cancel {María José Santofimia Romero} (lookup-element (car (incoming-split-elements  (lookup-element {faculty member})))))
(new-is-a {María José Santofimia Romero}{Undergraduate student})
(new-indv {David Villa Alises}{Faculty member})

;;;;;
(new-type {module}{thing})
(new-type {university studies year}{thing})
(new-type {first year}{university year of study})
(new-type {second year}{university year of study})
(new-type {third year}{university year of study})
(new-type {fourth year}{university year of study})
(new-type {university studies}{thing})
(new-type {evaluation test}{thing})
(new-split-subtypes {evaluation test}
		    '(({exam})
		      ({essays})
		      ({assigment})))

(new-relation {is-a-module-taken-in}
	      :a-inst-of {module}
	      :b-inst-of {university year of study})

(new-relation {is-evaluated-with}
	      :a-inst-of {module}
	      :b-inst-of {evaluation test})

(new-relation {studies}
	      :a-inst-of {undergraduate student}
	      :b-inst-of {university studies})

(new-relation {is-thought-in}
	      :a-inst-of {university studies}
	      :b-inst-of {university centre})

(new-relation {is-student-of}
	      :a-inst-of {undergraduate student}
	      :b-inst-of {university})

(new-relation {is-matriculated}
	      :a-inst-of {undergraduate student}
	      :b-inst-of {module})

(new-relation {is-in-his-her}
	      :a-inst-of {undergraduate student}
	      :b-inst-of {university year of study})

(new-relation {teaches}
	      :a-inst-of {faculty member}
	      :b-inst-of {module})

(new-indv {Grado en Derecho}{university studies})
(new-indv {Grado en Ingenieria informática}{university studies})
(new-indv {Funfamentos de la Programación I}{module})
(new-indv {Funfamentos de la Programación II}{module})
(new-indv {Examen ordinario de Fundamentos de la Programación I}{exam})
(new-indv {Práctica final de Fundamentos de la programación I}{assigment})
(new-indv {Examen ordinario de Fundamentos de la Programación II}{exam})
(new-indv {Práctica final de Fundamentos de la programación II}{assigment})

(new-statement {Grado en Ingenieria informática}
	       {is-thought-in}
	       {Escuela Superior de Informática})
(new-statement {Funfamentos de la Programación I}
	       {is-a-module-taken-in}
	       {Grado en Ingenieria informática})

(new-statement {Funfamentos de la Programación II}
	       {is-a-module-taken-in}
	       {Grado en Ingenieria informática})

(new-statement {Funfamentos de la Programación I}
	       {is-evaluated-with}
	       {Examen ordinario de Fundamentos de la Programación I})

(new-statement {Funfamentos de la Programación I}
	       {is-evaluated-with}
	       {Práctica final de Fundamentos de la programación I})

(new-statement {Funfamentos de la Programación II}
	       {is-evaluated-with}
	       {Examen ordinario de Fundamentos de la Programación II})

(new-statement {Funfamentos de la Programación II}
	       {is-evaluated-with}
	       {Práctica final de Fundamentos de la programación II})

(new-statement {Javier Dorado Chaparro}
	       {studies}
	       {Grado en Ingenieria informática})

(new-statement {Eulalio Oliver Donoso}
	       {studies}
	       {Grado en Ingenieria informática})

(new-statement {María José Santofimia Romero}
	       {studies}
	       {Grado en Derecho})

(new-statement {Javier Dorado Chaparro}
	       {is-matriculated}
	       {Funfamentos de la Programación I})

(new-statement {Javier Dorado Chaparro}
	       {is-matriculated}
	       {Funfamentos de la Programación II})

(new-statement {Eulalio Oliver Donoso}
	       {is-matriculated}
	       {Funfamentos de la Programación II})

(new-statement {Eulalio Oliver Donoso}
	       {is-in-his-her}
	       {fourth year})

(new-statement {Javier Dorado Chaparro}
	       {is-in-his-her}
	       {fourth year})

(new-statement {María José Santofimia Romero}
	       {teaches}
	       {Funfamentos de la Programación I})

;(new-statement {María José Santofimia Romero}
;	       {teaches}
;	       {Funfamentos de la Programación II})

(new-statement {David Villa Alises}
	       {teaches}
	       {Funfamentos de la Programación II})

;We consult the entered knowledge
(list-instances {centre}); Show campus instances
(list-instances {campus}); Show campus instances
(list-instances {headquarter}); Show headquarter instances
(list-instances {research institute}); Show research institute instances
(list-instances {department}); Show research department instances
(list-instances {faculty}); Show research faculty instances
(list-instances {university school}); Show research school instances

(list-all-x-of-y {centre} {UCLM})
(list-all-x-of-y {campus} {UCLM})
(list-all-x-of-y {headquarter} {UCLM})
(list-all-x-of-y {research institute} {UCLM})
(list-all-x-of-y {department} {UCLM})
(list-all-x-of-y {faculty} {UCLM})
(list-all-x-of-y {university school} {UCLM})

(list-all-x-of-y {centre} {MIT})
(list-all-x-of-y {campus} {MIT})
(List-all-x-of-y {headquarter} {MIT})
(List-all-x-of-y {research institute} {MIT})
(list-all-x-of-y {department} {MIT})
(list-all-x-of-y {faculty} {MIT})
(list-all-x-of-y {university school} {MIT})

(list-all-x-inverse-of-y {emplacement} {Campus Albacete})
(list-rel {teach} {Tecnologías y Sistemas de Información})
(list-rel {teach} {Matemáticas})
(list-rel-inverse {teach}{Escuela Superior de Informática de Ciudad Real})

(list-rel {studies}{Javier Dorado Chaparro})
(list-rel-inverse {studies}{Grado en Ingenieria informática})

(list-rel {is-matriculated}{Javier Dorado Chaparro})
(list-rel-inverse {is-matriculated}{Funfamentos de la Programación II})

(list-rel {is-in-his-her}{Javier Dorado Chaparro})
(list-rel-inverse {is-in-his-her}{fourth year})

(list-rel {teaches}{María José Santofimia Romero})
(list-rel-inverse {teaches}{Funfamentos de la Programación II})

(list-rel {is-a-module-taken-in}{Funfamentos de la Programación I})
(list-rel-inverse {is-a-module-taken-in}{Grado en Ingenieria informática})

(list-rel {is-evaluated-with}{Funfamentos de la Programación I})

(list-instances {graduate student})
(list-instances {undergraduate student})
(list-instances {staff member})
(list-instances {faculty member})
(list-instances {university person})


(mapcan #'(lambda (module) (list-rel-inverse {teaches} module)) (list-rel-inverse {is-a-module-taken-in}
				     {Grado en Ingenieria informática}))

(show-intersection '({undergraduate student} {faculty member}))


(mapcan #'(lambda (module) (list-rel {is-evaluated-with} module)) (list-rel {is-matriculated} {Javier Dorado Chaparro}))



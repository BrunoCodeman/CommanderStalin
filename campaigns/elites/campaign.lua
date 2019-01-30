--	   ____       _______  __    ______       _     _   __   _
--	  / ___/     / _____/_/  /_  \___  \     / /   / / /  \ / /
--       / /__  _    \_____\ \   __/ / /_\ \_   / /_  / / / /\ \ /
--      /____/ /_/  /______/ /_/    /_/   \__\ /____//_/ /_/  \_/
--          
--       A soviet real-time strategy game.
--          This file is part of Commander Stalin.
--
--	cstalin.lua	-	Main configuration file of Commander Stalin.
--
--	(c) Copyright 2007-2008 by Antonio Becerro Matinez.
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--  
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--  
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
--
--=============================================================================
--  Define the campaign
--

local briefingtext01 = 
   "Nivel 1: El golpe de estado de Trovsky. "..
   "La situación es extremadamente grave. "..
   "Los trabajadores están confusos, pero el partido esta controlado, por el momento... "..
   "Tienes poco tiempo para organizar el estado. Pon en marcha las instalaciones industriales disponibles. "..
   "Restaura la producción energetica. Extrae petroleo, y construye infanteria y blindados rápidamente. "..
   "Trovsky se dirige hacia tu base con sus tropas. Inteligencia cree que tienen una base en la pantalla. ".. 
   "Para pasar al siguiente nivel debes derrotar a las tropas Trosvskistas y destruir su base.  ¡Suerte camarada Stalin! "
local briefingtext02 =
   "Nivel 2: El sitio de Leningrado... "..
   "Trovski ha fracasado en tomar Moscú pero todavia tiene una gran influencia en el ejército rojo. "..
   "Al fin y al cabo fué su creador.  " ..
   "Está en una gran base militar en los alrededores de Leningrado. "..
   "Pero no sabemos exactamente donde. "..
   "Localiza la base de Trovski y elimina su amenaza para siempre. "..
   "El KGB opina que la base podría ser muy grande y estar muy bien defendida. "..
   "Preparaté muy bien antes de atacar. Tienes tiempo ya que Leningrado está lejos. "..
   "La seguridad del estado está en tus manos camarada Stalin!"
local briefingtext03 = 
   "Nivel 3: La industrialización de la URSS. "..
   "Tu principal objetivo como líder de la Unión Soviética es el desarrollo industrial del país. "..
   "No es tarea fácil debido al atraso histórico y a la enorme extensión del país. "..
   " Sin embargo es una tierra rica en recursos estratégicos: petroleo, gas, carbón, metales, etc. "..
   " Convierte tu base inicial en una gran ciudad industrial. Pero no olvides dotarte de un buen ejército."..
   " Existen informes dignos de crédito, que indican presencia de tropas desconocidas en esta basta región. "..
   " Seguridad del estado piensa que se trata de los restos del Zarismo, guerrillas Trovskistas o fuerzas extranjeras. "..
   " O incluso todos ellos actuando simultaneamente. "..
   " Para pasar el nivel debes eliminar a todos estos enemigos de la URSS. "..
   " ¡Suerte en tu misión camarada Stalin!. "
local briefingtext04 = 
   "Nivel 4: Conspiración en el partido. "..
   "Una amplia conspiración de origen incierto pretende expulsarte del gobierno. "..
   "Tu vida está en peligro. Utiliza al ejército ahora que te es fiel para evitarlo. "..
   "Los rebeldes han tomado varios edificios gubernamentales de Moscú y se han hecho con el control de parte de la ciudad. "..
   "Acaba con ellos, y con sus recursos y podras pasar el nivel. "..
   "¡Suerte camarada! Es un momento de gran incertidumbre para todos. "..
   "Si todo va bien disfrutaremos de un hermoso desfile en tu honor el primero de mayo. "
local briefingtext05 = 
   "Nivel 5: Operación Barbarroja. "..
   "Hace algún tiempo firmaste un pacto de no agresión con la Alemania Nazi. "..
   "Incluso ha habido desde entonces un ambiente de colaboración tecnológica y unas saltisfactorias relaciones comerciales con Alemania. "..
   "De forma traicionera (pero predecible) Alemania se ha vuelto contra nosotros. "..
   "Ahora sabemos el valor de las garantias personales del Fuhrer de que nunca nos atacaría. "..
   "El ataque es la operación militar más importante de la historia. Docenas de divisiones han entrado en el suelo patrio. "..
   "La violencia de sus métodos sobrepasa nuestra imaginación. Ni siquiera hacen prisioneros. ¡Une al país y resiste como puedas! "
local briefingtext06 = 
   "Nivel 6: Siberia. "..
   "El frente ha quedado estabilizado con Leningrado y Moscú sitiados. "..
   "Los alemanes parecen intentar ahora avanzar en el sur hacia el Caúcaso. "..
   "Como consecuencia de ello, hemos perdido la mayor parte de las regiones occidentales de la URSS. "..
   "Y toda nuestra industria se encontraba en estas regiomes. Para evitar perder la guerra tenemos que trasladar la industría hacia el norte, más alla de los Urales. "..
   "Siberia es ahora nuestra mejor oportunidad de victoria. Pero tenemos poco tiempo, y miles de carros de combate y aviones por construir. ¡Suerte padrecito Stalin! "
local briefingtext07 = 
   "Nivel 7: Stalingrado... "..
   "Tras la derrota de los Alemanes en Moscú y su incapacidad para detener nuestra producción, el Furher ha puesto su mirada en el frente sur. "..
   "Esta es la única región de la URSS donde la Wehrmacht es capáz de avanzar de forma satisfactoria. Si continuan avanzando podrian hacerse con el control del Caúcaso. "..
   "Y el Caúcaso es el centro de producción de petroleo más importante del país. Alemania no dispone de recursos energéticos en cantidad suficiente. "..
   "El servicio de inteligencia militar piensa que el enemigo está mal abastecido, de petroleo y de todo lo demás. Ellos nunca pensaron que la guerra fuese a durar tanto tiempo. "..
   "No están preparados ni para este invierno, ni para nosotros. "..
   "Evita que tomen Stalingrado a cualquier precio. Acaba con la leyenda de invencibilidad de la Wehrmacht para siempre!. "..
   "¡Esta es la batalla decisiva camarada, todo o nada!. "
local briefingtext08 = 
   "Nivel 8: La batalla de Kursk... "..
   "La derrota Alemana en Stalingrado ha cambiado el curso de la guerra. Por primera vez tenemos la iniciativa.  "..
   "Muchos empiezan a pensar que la guerra está ganada, pero todavia hay que ganarla camarada... "..
   "Es preciso derrotar al cuerpo principal de la Wehrmacht en el llamado frente central.  "..
   "Este es un enorme frente muy adecuado para la guerra mecanizada. Los Alemanes disponen todavia de al menos 35 divisiones. "..
   "Michas de ellas son acoradadas. Los mejores mandos y vehiculos estám dispuestos a emplearse a fondo. "..
   "Si nos derrotan, Stalingrado será considerado un accidente para la maquinaria militar Germana. "..
   "Pero si vencemos, todo el frente Alemán se desmoronará y ya no pararemos hasta Berlín. "..
   "¡Suerte camarada Stalin!. Las divisiones de carros de la Guardia te ayudarán en tu misión. "
local briefingtext09 = 
   "Nivel 9: Berlín. "..
   "Sorprendentemente el ejército Alemán no se ha desmoronado. "..
   "Aunque no tienen capacidad ofensiva creible, retroceden ordenadamente. "..
   "Defienden linea tras line,a cusandonos enormes pérdidas. "..
   "Pero mo tenemos tiempo que perder. El padrecito Stalin ha ordenado tomar Berlín ya. "..
   "Y es exactamente lo que vamos a hacer. la razón es que estamos en una carrera con los Americanos. El primero que llege será el ganador de la guerra. "


campaign_steps = {
  CreateMapStep("campaigns/elites/level01.smp",
      "Amplia tu base. Derrota al ejército Trovskista y destruye su base.", 
      briefingtext01),
  CreateMapStep("campaigns/elites/level02.smp", 
      "Mejora tu base. Construye un ejército, localiza y destruye completamente la base de Trovsky en Leningrado", 
      briefingtext02),
  CreateMapStep("campaigns/elites/level03.smp",
      "Industrializa el pais, y elimina a cualquiera que trate de impedirtelo.",
      briefingtext03),
  CreateMapStep("campaigns/elites/level04.smp",
      "Haz frente inmediatamente a los rebeldes en Moscú con el ejército rojo. Tu vida está en peligro!",
      briefingtext04),
  CreateMapStep("campaigns/elites/level05.smp", 
      "Detén el avance del enemigo Alemán. Evita que tomen Moscú y leningrado.", 
      briefingtext05),
  CreateMapStep("campaigns/elites/level06.smp",
      "Traslada la industria a Siberia y ponla en funcionamiento. Elimina cualquier oposición. ",
      briefingtext06),
  CreateMapStep("campaigns/elites/level07.smp",
      "Defiende Stalingrado calle por calle y casa por casa. Te enviaremos refuerzos.. .",
      briefingtext07),
  CreateMapStep("campaigns/elites/level08.smp",
      "Ataca con tus carros de combate a los alemanes. Construye más y continua atacandoles hasta derrotarles.",
      briefingtext08),
  CreateMapStep("campaigns/elites/level09.smp",
      "Conquista Berlín. Destruyeló completamente. Gana la guerra.",
      briefingtext09),

}


-- Funciones Matemáticas

-- Redondeo
SELECT titulo, duracion/60.0 AS horas_completas, ROUND (Duracion/60.0, 0) AS Redondeo_horas FROM Episodios;

-- Redondeo para el entero superior más próximo
SELECT titulo, duracion, CEILING(duracion/60.0) AS Horas_completas FROM Episodios;

-- Redondeo para el entero inferior más próximo
SELECT titulo, duracion, FLOOR(duracion/60.0) AS Horas_completas FROM Episodios;
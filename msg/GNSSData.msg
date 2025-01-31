## GGA - Global Positioning System Fix Data
float64 latitude        # Latitude in decimal degrees
float64 longitude       # Longitude in decimal degrees
float64 altitude        # Altitude in meters
int32 num_sats         # Number of satellites in view
int32 fix_status       # GPS Fix Type (0 = No Fix, 1 = GPS Fix, 2 = DGPS Fix, etc.)
float64 hdop           # Horizontal Dilution of Precision

## RMC - Recommended Minimum Specific GPS Data
float64 speed_knots    # Speed over ground in knots
float64 speed_mps      # Speed over ground in meters per second
float64 true_course    # Course over ground in degrees
string status          # Status: 'A' = valid, 'V' = warning/no fix
string datetime        # UTC Timestamp in ISO 8601 format (e.g., "2025-01-28T12:34:56Z")

## GLL - Geographic Position - Latitude/Longitude
string gll_status      # 'A' = valid, 'V' = warning/no fix

## GSA - GNSS DOP and Active Satellites
string mode            # M=Manual, A=Automatic
int32 mode_fix_type    # 1=No Fix, 2=2D Fix, 3=3D Fix
float64 pdop           # Position Dilution of Precision
float64 hdop_gsa       # Horizontal Dilution of Precision (from GSA)
float64 vdop           # Vertical Dilution of Precision

## GSV - GNSS Satellites in View
int32 num_sv_in_view   # Total satellites in view
int32 num_messages     # Number of messages in this GSV sequence
int32 msg_num          # Message number in sequence
int32[4] sv_prn        # PRN of up to 4 satellites
float64[4] elevation   # Elevation of each satellite in degrees
float64[4] azimuth     # Azimuth of each satellite in degrees
float64[4] snr         # Signal-to-noise ratio for each satellite

## VTG - Course Over Ground and Ground Speed
float64 course_true    # True course over ground in degrees
float64 course_magnetic # Magnetic course over ground in degrees
float64 spd_over_grnd_kts  # Speed over ground in knots
float64 spd_over_grnd_kmph # Speed over ground in km/h

## Debugging
string last_raw_nmea   # Last received NMEA sentence (for debugging)

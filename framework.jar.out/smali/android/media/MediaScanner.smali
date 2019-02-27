.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$WplHandler;,
        Landroid/media/MediaScanner$MediaBulkDeleter;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$PlaylistEntry;,
        Landroid/media/MediaScanner$FileEntry;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static CONFIG_NO_MEDIA_FOR_SIZE_ZERO:Z = false

.field private static CONFIG_PROTECT_EXTERNAL_ROOT:Z = false

.field private static CONFIG_PROTECT_MEDIA:Z = false

.field private static CONFIG_REBUILD_MEDIA_VIEW:Z = false

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DBG:Z

.field private static final DBG_LOGV:Z

.field private static final DEFAULT_RINGTONES:[Ljava/lang/String;

.field private static final DEFAULT_RINGTONE_COUNT:I

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final DEFAULT_SIM_INDEX:I = 0x0

.field private static final ENABLE_BULK_INSERTS:Z = true

.field private static final FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX:I = 0x3

.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

.field private static final ID3_GENRES:[Ljava/lang/String;

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field public static final LAST_INTERNAL_SCAN_FINGERPRINT:Ljava/lang/String; = "lastScanFingerprint"

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final PRODUCT_SOUNDS_DIR:Ljava/lang/String; = "/product/media/audio"

.field private static PROTECTED_MEDIA_PATH_ARRAY:[Ljava/lang/String; = null

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field public static final SCANNED_BUILD_PREFS_NAME:Ljava/lang/String; = "MediaScanBuild"

.field private static final SYSTEM_SOUNDS_DIR:Ljava/lang/String; = "/system/media/audio"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static mExternalPath:Ljava/lang/String;

.field private static mMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNoMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastInternalScanFingerprint:Ljava/lang/String;


# instance fields
.field private final mAudioUri:Landroid/net/Uri;

.field private final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCheck_All_Again:Z

.field private final mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultMmsNotificationFilename:Ljava/lang/String;

.field private mDefaultMmsNotificationSet:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtoneFilenames:[Ljava/lang/String;

.field private mDefaultRingtonesSet:[Z

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private final mFilesUri:Landroid/net/Uri;

.field private final mFilesUriNoNotify:Landroid/net/Uri;

.field private final mImagesUri:Landroid/net/Uri;

.field private mMediaInserter:Landroid/media/MediaInserter;

.field private final mMediaProvider:Landroid/content/ContentProviderClient;

.field private mMtpObjectHandle:I

.field private mNativeContext:J

.field private mOriginalCount:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaylistEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaScanner$PlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaylistsUri:Landroid/net/Uri;

.field private final mProcessGenres:Z

.field private final mProcessPlaylists:Z

.field private final mVideoUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 149

    .line 136
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    .line 141
    const-string/jumbo v0, "persist.debug.mp.all"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaScanner;->DBG_LOGV:Z

    .line 142
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sget-boolean v2, Landroid/media/MediaScanner;->DBG_LOGV:Z

    or-int/2addr v0, v2

    sput-boolean v0, Landroid/media/MediaScanner;->DBG:Z

    .line 147
    const/4 v0, 0x1

    sput-boolean v0, Landroid/media/MediaScanner;->CONFIG_NO_MEDIA_FOR_SIZE_ZERO:Z

    .line 149
    sput-boolean v0, Landroid/media/MediaScanner;->CONFIG_PROTECT_EXTERNAL_ROOT:Z

    .line 151
    new-array v0, v0, [I

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaScanner;->CONFIG_PROTECT_MEDIA:Z

    .line 153
    sput-boolean v1, Landroid/media/MediaScanner;->CONFIG_REBUILD_MEDIA_VIEW:Z

    .line 155
    const-string v0, "/DCIM/"

    const-string v1, "/DCIM/Camera"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->PROTECTED_MEDIA_PATH_ARRAY:[Ljava/lang/String;

    .line 161
    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "format"

    const-string v3, "date_modified"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 168
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    .line 177
    const-string/jumbo v0, "playlist_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 197
    const-string v1, "Blues"

    const-string v2, "Classic Rock"

    const-string v3, "Country"

    const-string v4, "Dance"

    const-string v5, "Disco"

    const-string v6, "Funk"

    const-string v7, "Grunge"

    const-string v8, "Hip-Hop"

    const-string v9, "Jazz"

    const-string v10, "Metal"

    const-string v11, "New Age"

    const-string v12, "Oldies"

    const-string v13, "Other"

    const-string v14, "Pop"

    const-string v15, "R&B"

    const-string v16, "Rap"

    const-string v17, "Reggae"

    const-string v18, "Rock"

    const-string v19, "Techno"

    const-string v20, "Industrial"

    const-string v21, "Alternative"

    const-string v22, "Ska"

    const-string v23, "Death Metal"

    const-string v24, "Pranks"

    const-string v25, "Soundtrack"

    const-string v26, "Euro-Techno"

    const-string v27, "Ambient"

    const-string v28, "Trip-Hop"

    const-string v29, "Vocal"

    const-string v30, "Jazz+Funk"

    const-string v31, "Fusion"

    const-string v32, "Trance"

    const-string v33, "Classical"

    const-string v34, "Instrumental"

    const-string v35, "Acid"

    const-string v36, "House"

    const-string v37, "Game"

    const-string v38, "Sound Clip"

    const-string v39, "Gospel"

    const-string v40, "Noise"

    const-string v41, "AlternRock"

    const-string v42, "Bass"

    const-string v43, "Soul"

    const-string v44, "Punk"

    const-string v45, "Space"

    const-string v46, "Meditative"

    const-string v47, "Instrumental Pop"

    const-string v48, "Instrumental Rock"

    const-string v49, "Ethnic"

    const-string v50, "Gothic"

    const-string v51, "Darkwave"

    const-string v52, "Techno-Industrial"

    const-string v53, "Electronic"

    const-string v54, "Pop-Folk"

    const-string v55, "Eurodance"

    const-string v56, "Dream"

    const-string v57, "Southern Rock"

    const-string v58, "Comedy"

    const-string v59, "Cult"

    const-string v60, "Gangsta"

    const-string v61, "Top 40"

    const-string v62, "Christian Rap"

    const-string v63, "Pop/Funk"

    const-string v64, "Jungle"

    const-string v65, "Native American"

    const-string v66, "Cabaret"

    const-string v67, "New Wave"

    const-string v68, "Psychadelic"

    const-string v69, "Rave"

    const-string v70, "Showtunes"

    const-string v71, "Trailer"

    const-string v72, "Lo-Fi"

    const-string v73, "Tribal"

    const-string v74, "Acid Punk"

    const-string v75, "Acid Jazz"

    const-string v76, "Polka"

    const-string v77, "Retro"

    const-string v78, "Musical"

    const-string v79, "Rock & Roll"

    const-string v80, "Hard Rock"

    const-string v81, "Folk"

    const-string v82, "Folk-Rock"

    const-string v83, "National Folk"

    const-string v84, "Swing"

    const-string v85, "Fast Fusion"

    const-string v86, "Bebob"

    const-string v87, "Latin"

    const-string v88, "Revival"

    const-string v89, "Celtic"

    const-string v90, "Bluegrass"

    const-string v91, "Avantgarde"

    const-string v92, "Gothic Rock"

    const-string v93, "Progressive Rock"

    const-string v94, "Psychedelic Rock"

    const-string v95, "Symphonic Rock"

    const-string v96, "Slow Rock"

    const-string v97, "Big Band"

    const-string v98, "Chorus"

    const-string v99, "Easy Listening"

    const-string v100, "Acoustic"

    const-string v101, "Humour"

    const-string v102, "Speech"

    const-string v103, "Chanson"

    const-string v104, "Opera"

    const-string v105, "Chamber Music"

    const-string v106, "Sonata"

    const-string v107, "Symphony"

    const-string v108, "Booty Bass"

    const-string v109, "Primus"

    const-string v110, "Porn Groove"

    const-string v111, "Satire"

    const-string v112, "Slow Jam"

    const-string v113, "Club"

    const-string v114, "Tango"

    const-string v115, "Samba"

    const-string v116, "Folklore"

    const-string v117, "Ballad"

    const-string v118, "Power Ballad"

    const-string v119, "Rhythmic Soul"

    const-string v120, "Freestyle"

    const-string v121, "Duet"

    const-string v122, "Punk Rock"

    const-string v123, "Drum Solo"

    const-string v124, "A capella"

    const-string v125, "Euro-House"

    const-string v126, "Dance Hall"

    const-string v127, "Goa"

    const-string v128, "Drum & Bass"

    const-string v129, "Club-House"

    const-string v130, "Hardcore"

    const-string v131, "Terror"

    const-string v132, "Indie"

    const-string v133, "Britpop"

    const-string v135, "Polsk Punk"

    const-string v136, "Beat"

    const-string v137, "Christian Gangsta"

    const-string v138, "Heavy Metal"

    const-string v139, "Black Metal"

    const-string v140, "Crossover"

    const-string v141, "Contemporary Christian"

    const-string v142, "Christian Rock"

    const-string v143, "Merengue"

    const-string v144, "Salsa"

    const-string v145, "Thrash Metal"

    const-string v146, "Anime"

    const-string v147, "JPop"

    const-string v148, "Synthpop"

    const/16 v134, 0x0

    filled-new-array/range {v1 .. v148}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    .line 443
    const-string/jumbo v0, "ringtone_default"

    const-string/jumbo v1, "ringtone"

    const-string/jumbo v2, "ringtone_2"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->DEFAULT_RINGTONES:[Ljava/lang/String;

    .line 446
    sget-object v0, Landroid/media/MediaScanner;->DEFAULT_RINGTONES:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Landroid/media/MediaScanner;->DEFAULT_RINGTONE_COUNT:I

    .line 1803
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    .line 1804
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "volumeName"    # Ljava/lang/String;

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const-string/jumbo v0, "persist.debug.mp.check_all"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaScanner;->mCheck_All_Again:Z

    .line 367
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 368
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 452
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 623
    new-instance v2, Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {v2, p0}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    iput-object v2, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 489
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    .line 490
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 491
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    .line 492
    iput-object p2, p0, Landroid/media/MediaScanner;->mVolumeName:Ljava/lang/String;

    .line 494
    iget-object v2, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v3, 0x1

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 495
    iget-object v2, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 503
    invoke-direct {p0}, Landroid/media/MediaScanner;->setOnePlusDefaultRingtoneFileNames()V

    .line 506
    iget-object v2, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "media"

    .line 507
    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 509
    sget-object v2, Landroid/media/MediaScanner;->sLastInternalScanFingerprint:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 510
    iget-object v2, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    const-string v4, "MediaScanBuild"

    .line 511
    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 512
    .local v2, "scanSettings":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "lastScanFingerprint"

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 513
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/media/MediaScanner;->sLastInternalScanFingerprint:Ljava/lang/String;

    .line 516
    .end local v2    # "scanSettings":Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {p2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 517
    invoke-static {p2}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 518
    invoke-static {p2}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 519
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 520
    iget-object v2, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v4, "nonotify"

    const-string v5, "1"

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    .line 523
    invoke-static {}, Landroid/media/MediaScanner;->getExternalPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/MediaScanner;->mExternalPath:Ljava/lang/String;

    .line 526
    const-string v2, "internal"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 528
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 529
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 530
    invoke-static {p2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    goto :goto_0

    .line 532
    :cond_1
    iput-boolean v1, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 533
    iput-boolean v1, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 534
    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 537
    :goto_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 538
    .local v0, "locale":Ljava/util/Locale;
    if-eqz v0, :cond_3

    .line 539
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "country":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 542
    if-eqz v2, :cond_2

    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    goto :goto_1

    .line 545
    :cond_2
    invoke-direct {p0, v1}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 550
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "country":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 134
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    invoke-direct {p0}, Landroid/media/MediaScanner;->isDrmEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 134
    invoke-static {p0}, Landroid/media/MediaScanner;->isSystemSoundWithMetadata(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 134
    sget-object v0, Landroid/media/MediaScanner;->sLastInternalScanFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCheck_All_Again:Z

    return v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 134
    sget-object v0, Landroid/media/MediaScanner;->mExternalPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .line 134
    sget-boolean v0, Landroid/media/MediaScanner;->DBG:Z

    return v0
.end method

.method static synthetic access$1500(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/media/MediaScannerClient;

    .line 134
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic access$1700()[Ljava/lang/String;
    .locals 1

    .line 134
    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultMmsNotificationSet:Z

    return v0
.end method

.method static synthetic access$2402(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Z

    .line 134
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultMmsNotificationSet:Z

    return p1
.end method

.method static synthetic access$2500(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultMmsNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600()I
    .locals 1

    .line 134
    sget v0, Landroid/media/MediaScanner;->DEFAULT_RINGTONE_COUNT:I

    return v0
.end method

.method static synthetic access$2700(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/media/MediaScanner;)[Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtonesSet:[Z

    return-object v0
.end method

.method static synthetic access$2900()[Ljava/lang/String;
    .locals 1

    .line 134
    sget-object v0, Landroid/media/MediaScanner;->DEFAULT_RINGTONES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/media/MediaScanner;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/media/MediaScanner;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/media/MediaScanner;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method static synthetic access$3302(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Landroid/drm/DrmManagerClient;

    .line 134
    iput-object p1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object p1
.end method

.method static synthetic access$3500(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0, p1, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/media/MediaScanner;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget v0, p0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    return v0
.end method

.method static synthetic access$500(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic access$502(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Z

    .line 134
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic access$600(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/MediaScanner;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilenames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic access$802(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Z

    .line 134
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic access$900(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 134
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method private cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;

    .line 2021
    new-instance v0, Landroid/media/MediaScanner$PlaylistEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaScanner$PlaylistEntry;-><init>(Landroid/media/MediaScanner$1;)V

    .line 2023
    .local v0, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2024
    .local v1, "entryLength":I
    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2027
    :cond_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    return-void

    .line 2028
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2032
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2033
    .local v2, "ch1":C
    const/16 v4, 0x2f

    const/4 v5, 0x1

    if-eq v2, v4, :cond_4

    .line 2034
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x3a

    if-ne v4, v6, :cond_3

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x5c

    if-ne v4, v6, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    move v3, v5

    .line 2036
    .local v3, "fullPath":Z
    :goto_2
    if-nez v3, :cond_5

    .line 2037
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2038
    :cond_5
    iput-object p1, v0, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    .line 2041
    iget-object v4, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2042
    return-void
.end method

.method public static clearMediaPathCache(ZZ)V
    .locals 2
    .param p0, "clearMediaPaths"    # Z
    .param p1, "clearNoMediaPaths"    # Z

    .line 1808
    const-class v0, Landroid/media/MediaScanner;

    monitor-enter v0

    .line 1809
    if-eqz p0, :cond_0

    .line 1810
    :try_start_0
    sget-object v1, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 1815
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1812
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1813
    sget-object v1, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1815
    :cond_1
    monitor-exit v0

    .line 1816
    return-void

    .line 1815
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private deleteNoMediaInProtectedPath()Z
    .locals 8

    .line 2312
    const/4 v0, 0x0

    .line 2313
    .local v0, "is_deleted":Z
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/media/MediaScanner;->mExternalPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/.nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2314
    .local v1, "actualRootFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2315
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2316
    sget-boolean v2, Landroid/media/MediaScanner;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteNoMediaInProtectedPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " was protected."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2319
    :cond_1
    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteNoMediaInProtectedPath: failed on removing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v3, Landroid/media/MediaScanner;->PROTECTED_MEDIA_PATH_ARRAY:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 2323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/media/MediaScanner;->mExternalPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/media/MediaScanner;->PROTECTED_MEDIA_PATH_ARRAY:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".nomedia"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2324
    .local v3, "actualPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2325
    .local v4, "protectedFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2326
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2327
    sget-boolean v5, Landroid/media/MediaScanner;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteNoMediaInProtectedPath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " was protected."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    .line 2330
    :cond_4
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteNoMediaInProtectedPath: failed on removing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    .end local v3    # "actualPath":Ljava/lang/String;
    .end local v4    # "protectedFile":Ljava/io/File;
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2335
    .end local v2    # "i":I
    :cond_6
    return v0
.end method

.method private static getExternalPath()Ljava/lang/String;
    .locals 3

    .line 560
    const/4 v0, 0x0

    .line 561
    .local v0, "externalPath":Ljava/lang/String;
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 562
    .local v1, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 563
    return-object v0
.end method

.method private isDrmEnabled()Z
    .locals 2

    .line 626
    const-string v0, "drm.service.enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isNoMediaFile(Ljava/lang/String;)Z
    .locals 12
    .param p0, "path"    # Ljava/lang/String;

    .line 1770
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1771
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 1776
    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1777
    .local v1, "lastSlash":I
    if-ltz v1, :cond_6

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 1779
    add-int/lit8 v3, v1, 0x1

    const-string v4, "._"

    const/4 v5, 0x2

    invoke-virtual {p0, v3, v4, v2, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 1780
    return v4

    .line 1786
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v7, v3, -0x4

    const-string v8, ".jpg"

    const/4 v9, 0x0

    const/4 v10, 0x4

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1787
    const/4 v6, 0x1

    add-int/lit8 v7, v1, 0x1

    const-string v8, "AlbumArt_{"

    const/4 v9, 0x0

    const/16 v10, 0xa

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v6, 0x1

    add-int/lit8 v7, v1, 0x1

    const-string v8, "AlbumArt."

    const/4 v9, 0x0

    const/16 v10, 0x9

    .line 1788
    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1791
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v4

    .line 1792
    .local v3, "length":I
    const/16 v5, 0x11

    if-ne v3, v5, :cond_3

    const/4 v7, 0x1

    add-int/lit8 v8, v1, 0x1

    const-string v9, "AlbumArtSmall"

    const/4 v10, 0x0

    const/16 v11, 0xd

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    const/16 v5, 0xa

    if-ne v3, v5, :cond_6

    const/4 v7, 0x1

    add-int/lit8 v8, v1, 0x1

    const-string v9, "Folder"

    const/4 v10, 0x0

    const/4 v11, 0x6

    .line 1795
    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1796
    :cond_4
    return v4

    .line 1789
    .end local v3    # "length":I
    :cond_5
    :goto_0
    return v4

    .line 1800
    :cond_6
    return v2
.end method

.method public static isNoMediaPath(Ljava/lang/String;)Z
    .locals 13
    .param p0, "path"    # Ljava/lang/String;

    .line 1819
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1820
    return v0

    .line 1826
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1827
    .local v1, "checkPath":Ljava/io/File;
    sget-boolean v2, Landroid/media/MediaScanner;->CONFIG_NO_MEDIA_FOR_SIZE_ZERO:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-string v2, ".nomedia"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    .line 1828
    sget-boolean v0, Landroid/media/MediaScanner;->DBG_LOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip the media type of size 0 file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    :cond_1
    return v3

    .line 1834
    :cond_2
    const-string v2, "/."

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 1835
    return v3

    .line 1838
    :cond_3
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1839
    .local v4, "firstSlash":I
    if-gtz v4, :cond_4

    .line 1840
    return v0

    .line 1842
    :cond_4
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1845
    .local v5, "parent":Ljava/lang/String;
    sget-boolean v6, Landroid/media/MediaScanner;->CONFIG_PROTECT_MEDIA:Z

    if-eqz v6, :cond_6

    sget-object v6, Landroid/media/MediaScanner;->mExternalPath:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {p0}, Landroid/media/MediaScanner;->isProtectedMediaPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1846
    :cond_5
    return v0

    .line 1850
    :cond_6
    const-class v6, Landroid/media/MediaScanner;

    monitor-enter v6

    .line 1851
    :try_start_0
    sget-object v7, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1852
    monitor-exit v6

    return v3

    .line 1853
    :cond_7
    sget-object v7, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1856
    move v7, v3

    .line 1857
    .local v7, "offset":I
    :goto_0
    if-ltz v7, :cond_a

    .line 1858
    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 1859
    .local v8, "slashIndex":I
    if-le v8, v7, :cond_9

    .line 1860
    add-int/lit8 v8, v8, 0x1

    .line 1869
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".nomedia"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1870
    .local v9, "noMediaPath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1871
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_9

    sget-boolean v11, Landroid/media/MediaScanner;->CONFIG_PROTECT_EXTERNAL_ROOT:Z

    if-eqz v11, :cond_8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Landroid/media/MediaScanner;->mExternalPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/.nomedia"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 1874
    :cond_8
    sget-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    const-string v2, ""

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    monitor-exit v6

    return v3

    .line 1878
    .end local v9    # "noMediaPath":Ljava/lang/String;
    .end local v10    # "file":Ljava/io/File;
    :cond_9
    move v7, v8

    .line 1879
    .end local v8    # "slashIndex":I
    goto :goto_0

    .line 1880
    :cond_a
    sget-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    const-string v2, ""

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1882
    .end local v7    # "offset":I
    :cond_b
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1884
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1882
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isProtectedMediaPath(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 2345
    const/4 v0, 0x0

    .line 2346
    .local v0, "isProtected":Z
    if-eqz p0, :cond_6

    sget-boolean v1, Landroid/media/MediaScanner;->CONFIG_PROTECT_MEDIA:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 2350
    :cond_0
    sget-boolean v1, Landroid/media/MediaScanner;->CONFIG_PROTECT_EXTERNAL_ROOT:Z

    if-eqz v1, :cond_3

    sget-object v1, Landroid/media/MediaScanner;->mExternalPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/media/MediaScanner;->mExternalPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/.nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2351
    :cond_1
    sget-boolean v1, Landroid/media/MediaScanner;->DBG_LOGV:Z

    if-eqz v1, :cond_2

    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNoMediaPath: we plan to protect root dir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/media/MediaScanner;->mExternalPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/.nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    .line 2354
    :cond_3
    sget-object v1, Landroid/media/MediaScanner;->PROTECTED_MEDIA_PATH_ARRAY:[Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 2355
    const/4 v1, 0x0

    .line 2355
    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/media/MediaScanner;->PROTECTED_MEDIA_PATH_ARRAY:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 2356
    sget-object v2, Landroid/media/MediaScanner;->PROTECTED_MEDIA_PATH_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2358
    const-string v2, "/."

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4

    const-string v2, ".nomedia"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2359
    const/4 v0, 0x0

    goto :goto_2

    .line 2361
    :cond_4
    const/4 v0, 0x1

    .line 2363
    goto :goto_2

    .line 2355
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2347
    .end local v1    # "i":I
    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 2369
    :cond_7
    :goto_2
    sget-boolean v1, Landroid/media/MediaScanner;->DBG_LOGV:Z

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProtectedMediaPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is protected."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    :cond_8
    return v0
.end method

.method private static isSystemSoundWithMetadata(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 1487
    const-string v0, "/system/media/audio/alarms/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/media/audio/ringtones/"

    .line 1488
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/media/audio/notifications/"

    .line 1489
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/product/media/audio/alarms/"

    .line 1490
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/product/media/audio/ringtones/"

    .line 1491
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/product/media/audio/notifications/"

    .line 1492
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1495
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1493
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private matchEntries(JLjava/lang/String;)Z
    .locals 6
    .param p1, "rowId"    # J
    .param p3, "data"    # Ljava/lang/String;

    .line 1997
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1998
    .local v0, "len":I
    const/4 v1, 0x1

    .line 1999
    .local v1, "done":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2000
    iget-object v3, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaScanner$PlaylistEntry;

    .line 2001
    .local v3, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    iget v4, v3, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_0

    .line 2002
    goto :goto_1

    .line 2004
    :cond_0
    const/4 v1, 0x0

    .line 2005
    iget-object v4, v3, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2006
    iput-wide p1, v3, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2007
    iput v5, v3, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    .line 2008
    goto :goto_1

    .line 2011
    :cond_1
    iget-object v4, v3, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-direct {p0, p3, v4}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2012
    .local v4, "matchLength":I
    iget v5, v3, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-le v4, v5, :cond_2

    .line 2013
    iput-wide p1, v3, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2014
    iput v4, v3, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    .line 1999
    .end local v3    # "entry":Landroid/media/MediaScanner$PlaylistEntry;
    .end local v4    # "matchLength":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2017
    .end local v2    # "i":I
    :cond_3
    return v1
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .param p1, "path1"    # Ljava/lang/String;
    .param p2, "path2"    # Ljava/lang/String;

    move-object/from16 v6, p1

    .line 1970
    move-object/from16 v7, p2

    const/4 v0, 0x0

    .line 1971
    .local v0, "result":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1972
    .local v1, "end1":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    move v9, v0

    move v8, v1

    .end local v0    # "result":I
    .end local v1    # "end1":I
    .local v2, "end2":I
    .local v8, "end1":I
    .local v9, "result":I
    :goto_0
    move v10, v2

    .line 1974
    .end local v2    # "end2":I
    .local v10, "end2":I
    if-lez v8, :cond_5

    if-lez v10, :cond_5

    .line 1975
    add-int/lit8 v0, v8, -0x1

    const/16 v1, 0x2f

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 1976
    .local v11, "slash1":I
    add-int/lit8 v0, v10, -0x1

    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 1977
    .local v12, "slash2":I
    add-int/lit8 v0, v8, -0x1

    const/16 v1, 0x5c

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v13

    .line 1978
    .local v13, "backSlash1":I
    add-int/lit8 v0, v10, -0x1

    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v14

    .line 1979
    .local v14, "backSlash2":I
    if-le v11, v13, :cond_0

    move v0, v11

    goto :goto_1

    :cond_0
    move v0, v13

    .line 1980
    .local v0, "start1":I
    :goto_1
    if-le v12, v14, :cond_1

    move v1, v12

    goto :goto_2

    :cond_1
    move v1, v14

    .line 1981
    .local v1, "start2":I
    :goto_2
    if-gez v0, :cond_2

    const/4 v0, 0x0

    .line 1982
    .end local v0    # "start1":I
    .local v15, "start1":I
    :goto_3
    move v15, v0

    goto :goto_4

    .line 1981
    .end local v15    # "start1":I
    .restart local v0    # "start1":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1982
    .end local v0    # "start1":I
    .restart local v15    # "start1":I
    :goto_4
    if-gez v1, :cond_3

    const/4 v0, 0x0

    .line 1983
    .end local v1    # "start2":I
    .local v0, "start2":I
    move/from16 v16, v0

    goto :goto_5

    .line 1982
    .end local v0    # "start2":I
    .restart local v1    # "start2":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 1983
    move/from16 v16, v1

    .end local v1    # "start2":I
    .local v16, "start2":I
    :goto_5
    sub-int v5, v8, v15

    .line 1984
    .local v5, "length":I
    sub-int v0, v10, v16

    if-eq v0, v5, :cond_4

    .end local v5    # "length":I
    .end local v11    # "slash1":I
    .end local v12    # "slash2":I
    .end local v13    # "backSlash1":I
    .end local v14    # "backSlash2":I
    .end local v15    # "start1":I
    .end local v16    # "start2":I
    goto :goto_6

    .line 1985
    .restart local v5    # "length":I
    .restart local v11    # "slash1":I
    .restart local v12    # "slash2":I
    .restart local v13    # "backSlash1":I
    .restart local v14    # "backSlash2":I
    .restart local v15    # "start1":I
    .restart local v16    # "start2":I
    :cond_4
    const/4 v1, 0x1

    move-object v0, v6

    move v2, v15

    move-object v3, v7

    move/from16 v4, v16

    move/from16 v17, v5

    .end local v5    # "length":I
    .local v17, "length":I
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1986
    add-int/lit8 v9, v9, 0x1

    .line 1987
    add-int/lit8 v8, v15, -0x1

    .line 1988
    add-int/lit8 v2, v16, -0x1

    .line 1990
    .end local v10    # "end2":I
    .end local v11    # "slash1":I
    .end local v12    # "slash2":I
    .end local v13    # "backSlash1":I
    .end local v14    # "backSlash2":I
    .end local v15    # "start1":I
    .end local v16    # "start2":I
    .end local v17    # "length":I
    .restart local v2    # "end2":I
    goto :goto_0

    .line 1992
    .end local v2    # "end2":I
    .restart local v10    # "end2":I
    :cond_5
    :goto_6
    return v9
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method private postscan([Ljava/lang/String;)V
    .locals 1
    .param p1, "directories"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1671
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v0, :cond_0

    .line 1672
    invoke-direct {p0}, Landroid/media/MediaScanner;->processPlayLists()V

    .line 1676
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1677
    return-void
.end method

.method private prescan(Ljava/lang/String;Z)V
    .locals 25
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "prescanFiles"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1513
    const/4 v3, 0x0

    .line 1514
    .local v3, "c":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1515
    .local v0, "where":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1517
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v5, v1, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1519
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    .line 1521
    const-string v0, "_id>? AND _data=?"

    .line 1523
    new-array v8, v5, [Ljava/lang/String;

    const-string v9, ""

    aput-object v9, v8, v7

    aput-object p1, v8, v6

    move-object v4, v8

    .line 1535
    .end local v0    # "where":Ljava/lang/String;
    .local v4, "where":Ljava/lang/String;
    .local v15, "selectionArgs":[Ljava/lang/String;
    :goto_0
    move-object v15, v4

    move-object v4, v0

    goto :goto_1

    .line 1525
    .end local v15    # "selectionArgs":[Ljava/lang/String;
    .restart local v0    # "where":Ljava/lang/String;
    .local v4, "selectionArgs":[Ljava/lang/String;
    :cond_0
    const-string v0, "_id>?"

    .line 1526
    const-string v8, ""

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    goto :goto_0

    .line 1535
    .end local v0    # "where":Ljava/lang/String;
    .local v4, "where":Ljava/lang/String;
    .restart local v15    # "selectionArgs":[Ljava/lang/String;
    :goto_1
    move v0, v7

    .line 1535
    .local v0, "i":I
    :goto_2
    sget v8, Landroid/media/MediaScanner;->DEFAULT_RINGTONE_COUNT:I

    if-ge v0, v8, :cond_1

    .line 1536
    iget-object v8, v1, Landroid/media/MediaScanner;->mDefaultRingtonesSet:[Z

    sget-object v9, Landroid/media/MediaScanner;->DEFAULT_RINGTONES:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-direct {v1, v9}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    move-result v9

    aput-boolean v9, v8, v0

    .line 1535
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1540
    .end local v0    # "i":I
    :cond_1
    const-string/jumbo v0, "notification_sound"

    invoke-direct {v1, v0}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    .line 1541
    const-string v0, "alarm_alert"

    invoke-direct {v1, v0}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    .line 1547
    iget-object v0, v1, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    .line 1548
    .local v14, "builder":Landroid/net/Uri$Builder;
    const-string v0, "deletedata"

    const-string v8, "false"

    invoke-virtual {v14, v0, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1549
    new-instance v0, Landroid/media/MediaScanner$MediaBulkDeleter;

    iget-object v8, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Landroid/media/MediaScanner$MediaBulkDeleter;-><init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V

    move-object v13, v0

    .line 1553
    .local v13, "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    if-eqz p2, :cond_a

    .line 1558
    const-wide/high16 v8, -0x8000000000000000L

    .line 1559
    .local v8, "lastId":J
    :try_start_0
    iget-object v0, v1, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v10, "limit"

    const-string v11, "1000"

    invoke-virtual {v0, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    move-wide v11, v8

    move-object v9, v0

    .line 1562
    .end local v8    # "lastId":J
    .local v9, "limitUri":Landroid/net/Uri;
    .local v11, "lastId":J
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v15, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 1563
    if-eqz v3, :cond_2

    .line 1564
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1565
    const/4 v0, 0x0

    .line 1567
    .end local v3    # "c":Landroid/database/Cursor;
    .local v0, "c":Landroid/database/Cursor;
    move-object v3, v0

    goto :goto_4

    .line 1617
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v9    # "limitUri":Landroid/net/Uri;
    .end local v11    # "lastId":J
    .restart local v3    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    move-object/from16 v24, v4

    move-object v7, v13

    move-object/from16 v20, v14

    goto/16 :goto_a

    .line 1567
    .restart local v9    # "limitUri":Landroid/net/Uri;
    .restart local v11    # "lastId":J
    :cond_2
    :goto_4
    :try_start_2
    iget-object v8, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    sget-object v10, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string v0, "_id"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    const/16 v16, 0x0

    move-wide/from16 v17, v11

    move-object v11, v4

    .line 1567
    .end local v11    # "lastId":J
    .local v17, "lastId":J
    move-object v12, v15

    move-object/from16 v19, v13

    move-object v13, v0

    .line 1567
    .end local v13    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .local v19, "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    move-object/from16 v20, v14

    move-object/from16 v14, v16

    .line 1567
    .end local v14    # "builder":Landroid/net/Uri$Builder;
    .local v20, "builder":Landroid/net/Uri$Builder;
    :try_start_3
    invoke-virtual/range {v8 .. v14}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-object v3, v0

    .line 1569
    if-nez v3, :cond_3

    .line 1570
    goto :goto_5

    .line 1573
    :cond_3
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v8, v0

    .line 1575
    .local v8, "num":I
    if-nez v8, :cond_4

    .line 1576
    nop

    .line 1617
    .end local v8    # "num":I
    .end local v9    # "limitUri":Landroid/net/Uri;
    .end local v17    # "lastId":J
    :goto_5
    move-object/from16 v24, v4

    move-object/from16 v7, v19

    goto/16 :goto_b

    .line 1578
    .restart local v8    # "num":I
    .restart local v9    # "limitUri":Landroid/net/Uri;
    .restart local v17    # "lastId":J
    :cond_4
    move-wide/from16 v11, v17

    .line 1578
    .end local v17    # "lastId":J
    .restart local v11    # "lastId":J
    :goto_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1579
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1580
    .local v13, "rowId":J
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 1581
    .local v10, "path":Ljava/lang/String;
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v21, v0

    .line 1582
    .local v21, "format":I
    const/4 v0, 0x3

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1583
    .local v16, "lastModified":J
    move-wide v11, v13

    .line 1588
    if-eqz v10, :cond_7

    const-string v0, "/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v0, :cond_7

    .line 1589
    move/from16 v18, v7

    .line 1591
    .local v18, "exists":Z
    :try_start_5
    sget v0, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v10, v0}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result v0
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move/from16 v18, v0

    .line 1593
    goto :goto_7

    .line 1617
    .end local v8    # "num":I
    .end local v9    # "limitUri":Landroid/net/Uri;
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "lastId":J
    .end local v13    # "rowId":J
    .end local v16    # "lastModified":J
    .end local v18    # "exists":Z
    .end local v21    # "format":I
    :catchall_1
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v7, v19

    goto/16 :goto_a

    .line 1592
    .restart local v8    # "num":I
    .restart local v9    # "limitUri":Landroid/net/Uri;
    .restart local v10    # "path":Ljava/lang/String;
    .restart local v11    # "lastId":J
    .restart local v13    # "rowId":J
    .restart local v16    # "lastModified":J
    .restart local v18    # "exists":Z
    .restart local v21    # "format":I
    :catch_0
    move-exception v0

    .line 1594
    :goto_7
    if-nez v18, :cond_7

    move/from16 v5, v21

    :try_start_6
    invoke-static {v5}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v0

    .line 1594
    .end local v21    # "format":I
    .local v5, "format":I
    if-nez v0, :cond_7

    .line 1599
    invoke-static {v10}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v0

    .line 1600
    .local v0, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v0, :cond_5

    move v6, v7

    goto :goto_8

    :cond_5
    iget v6, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .line 1602
    .local v6, "fileType":I
    :goto_8
    invoke-static {v6}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-nez v21, :cond_7

    .line 1603
    move-object/from16 v7, v19

    :try_start_7
    invoke-virtual {v7, v13, v14}, Landroid/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    .line 1604
    .end local v19    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .local v7, "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    move-object/from16 v22, v0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1604
    .end local v0    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .local v22, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    invoke-virtual {v10, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/.nomedia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1605
    invoke-virtual {v7}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1606
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 1607
    .local v0, "parent":Ljava/lang/String;
    iget-object v2, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v23, v3

    :try_start_8
    const-string/jumbo v3, "unhide"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1607
    .end local v3    # "c":Landroid/database/Cursor;
    .local v23, "c":Landroid/database/Cursor;
    move-object/from16 v24, v4

    const/4 v4, 0x0

    .line 1607
    .end local v4    # "where":Ljava/lang/String;
    .local v24, "where":Ljava/lang/String;
    :try_start_9
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1607
    .end local v0    # "parent":Ljava/lang/String;
    .end local v5    # "format":I
    .end local v6    # "fileType":I
    .end local v10    # "path":Ljava/lang/String;
    .end local v13    # "rowId":J
    .end local v16    # "lastModified":J
    .end local v18    # "exists":Z
    .end local v22    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    goto :goto_9

    .line 1617
    .end local v8    # "num":I
    .end local v9    # "limitUri":Landroid/net/Uri;
    .end local v11    # "lastId":J
    :catchall_2
    move-exception v0

    move-object/from16 v3, v23

    goto :goto_a

    .line 1617
    .end local v24    # "where":Ljava/lang/String;
    .restart local v4    # "where":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v3, v23

    .line 1617
    .end local v4    # "where":Ljava/lang/String;
    .restart local v24    # "where":Ljava/lang/String;
    goto :goto_a

    .line 1612
    .end local v23    # "c":Landroid/database/Cursor;
    .end local v24    # "where":Ljava/lang/String;
    .restart local v3    # "c":Landroid/database/Cursor;
    .restart local v4    # "where":Ljava/lang/String;
    .restart local v8    # "num":I
    .restart local v9    # "limitUri":Landroid/net/Uri;
    .restart local v11    # "lastId":J
    :cond_6
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    .line 1612
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "where":Ljava/lang/String;
    .restart local v23    # "c":Landroid/database/Cursor;
    .restart local v24    # "where":Ljava/lang/String;
    goto :goto_9

    .line 1617
    .end local v8    # "num":I
    .end local v9    # "limitUri":Landroid/net/Uri;
    .end local v11    # "lastId":J
    .end local v23    # "c":Landroid/database/Cursor;
    .end local v24    # "where":Ljava/lang/String;
    .restart local v3    # "c":Landroid/database/Cursor;
    .restart local v4    # "where":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    .line 1617
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "where":Ljava/lang/String;
    .restart local v23    # "c":Landroid/database/Cursor;
    .restart local v24    # "where":Ljava/lang/String;
    goto :goto_a

    .line 1612
    .end local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .end local v23    # "c":Landroid/database/Cursor;
    .end local v24    # "where":Ljava/lang/String;
    .restart local v3    # "c":Landroid/database/Cursor;
    .restart local v4    # "where":Ljava/lang/String;
    .restart local v8    # "num":I
    .restart local v9    # "limitUri":Landroid/net/Uri;
    .restart local v11    # "lastId":J
    .restart local v19    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    :cond_7
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v7, v19

    .line 1578
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "where":Ljava/lang/String;
    .end local v19    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v23    # "c":Landroid/database/Cursor;
    .restart local v24    # "where":Ljava/lang/String;
    :goto_9
    move-object/from16 v19, v7

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_6

    .line 1613
    .end local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .end local v8    # "num":I
    .end local v23    # "c":Landroid/database/Cursor;
    .end local v24    # "where":Ljava/lang/String;
    .restart local v3    # "c":Landroid/database/Cursor;
    .restart local v4    # "where":Ljava/lang/String;
    .restart local v19    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    :cond_8
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v7, v19

    .line 1559
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "where":Ljava/lang/String;
    .end local v19    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v23    # "c":Landroid/database/Cursor;
    .restart local v24    # "where":Ljava/lang/String;
    move-object v13, v7

    move-object/from16 v14, v20

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1617
    .end local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .end local v9    # "limitUri":Landroid/net/Uri;
    .end local v11    # "lastId":J
    .end local v23    # "c":Landroid/database/Cursor;
    .end local v24    # "where":Ljava/lang/String;
    .restart local v3    # "c":Landroid/database/Cursor;
    .restart local v4    # "where":Ljava/lang/String;
    .restart local v19    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    :catchall_5
    move-exception v0

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v7, v19

    .line 1617
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "where":Ljava/lang/String;
    .end local v19    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v23    # "c":Landroid/database/Cursor;
    .restart local v24    # "where":Ljava/lang/String;
    goto :goto_a

    .line 1617
    .end local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .end local v23    # "c":Landroid/database/Cursor;
    .end local v24    # "where":Ljava/lang/String;
    .restart local v3    # "c":Landroid/database/Cursor;
    .restart local v4    # "where":Ljava/lang/String;
    .restart local v19    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    :catchall_6
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v7, v19

    .line 1617
    .end local v4    # "where":Ljava/lang/String;
    .end local v19    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v24    # "where":Ljava/lang/String;
    goto :goto_a

    .line 1617
    .end local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .end local v20    # "builder":Landroid/net/Uri$Builder;
    .end local v24    # "where":Ljava/lang/String;
    .restart local v4    # "where":Ljava/lang/String;
    .local v13, "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v14    # "builder":Landroid/net/Uri$Builder;
    :catchall_7
    move-exception v0

    move-object/from16 v24, v4

    move-object v7, v13

    move-object/from16 v20, v14

    .line 1617
    .end local v4    # "where":Ljava/lang/String;
    .end local v13    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .end local v14    # "builder":Landroid/net/Uri$Builder;
    .restart local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v20    # "builder":Landroid/net/Uri$Builder;
    .restart local v24    # "where":Ljava/lang/String;
    :goto_a
    if-eqz v3, :cond_9

    .line 1618
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1620
    :cond_9
    invoke-virtual {v7}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    throw v0

    .line 1617
    .end local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .end local v20    # "builder":Landroid/net/Uri$Builder;
    .end local v24    # "where":Ljava/lang/String;
    .restart local v4    # "where":Ljava/lang/String;
    .restart local v13    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v14    # "builder":Landroid/net/Uri$Builder;
    :cond_a
    move-object/from16 v24, v4

    move-object v7, v13

    move-object/from16 v20, v14

    .line 1617
    .end local v4    # "where":Ljava/lang/String;
    .end local v13    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .end local v14    # "builder":Landroid/net/Uri$Builder;
    .restart local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v20    # "builder":Landroid/net/Uri$Builder;
    .restart local v24    # "where":Ljava/lang/String;
    :goto_b
    if-eqz v3, :cond_b

    .line 1618
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1620
    :cond_b
    invoke-virtual {v7}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1621
    nop

    .line 1624
    const/4 v2, 0x0

    iput v2, v1, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1625
    iget-object v8, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v9, v1, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v10, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 1626
    .end local v3    # "c":Landroid/database/Cursor;
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_c

    .line 1627
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1628
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1630
    :cond_c
    return-void
.end method

.method private processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 7
    .param p1, "fileList"    # Landroid/database/Cursor;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "playlistUri"    # Landroid/net/Uri;

    .line 2045
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2046
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2047
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2048
    .local v2, "rowId":J
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2049
    .local v0, "data":Ljava/lang/String;
    invoke-direct {p0, v2, v3, v0}, Landroid/media/MediaScanner;->matchEntries(JLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2050
    goto :goto_1

    .line 2052
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "rowId":J
    :cond_0
    goto :goto_0

    .line 2054
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2055
    .local v0, "len":I
    const/4 v2, 0x0

    .line 2056
    .local v2, "index":I
    nop

    .line 2056
    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 2057
    iget-object v3, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaScanner$PlaylistEntry;

    .line 2058
    .local v3, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    iget v4, v3, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-lez v4, :cond_2

    .line 2060
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 2061
    const-string/jumbo v4, "play_order"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2062
    const-string v4, "audio_id"

    iget-wide v5, v3, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2063
    iget-object v4, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v4, p3, p2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2064
    add-int/lit8 v2, v2, 0x1

    .line 2068
    goto :goto_3

    .line 2065
    :catch_0
    move-exception v4

    .line 2066
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "MediaScanner"

    const-string v6, "RemoteException in MediaScanner.processCachedPlaylist()"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2067
    return-void

    .line 2056
    .end local v3    # "entry":Landroid/media/MediaScanner$PlaylistEntry;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2071
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2072
    return-void
.end method

.method private native processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)Z
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .line 2076
    const/4 v0, 0x0

    .line 2078
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2079
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2080
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v0, v2

    .line 2082
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 2083
    .local v2, "line":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2084
    :goto_0
    if-eqz v2, :cond_1

    .line 2086
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_0

    .line 2087
    invoke-direct {p0, v2, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 2092
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2098
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "line":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 2099
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2100
    :catch_0
    move-exception v1

    .line 2101
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "MediaScanner"

    const-string v3, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2103
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 2102
    :cond_3
    :goto_1
    goto :goto_2

    .line 2097
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 2094
    :catch_1
    move-exception v1

    .line 2095
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "MediaScanner"

    const-string v3, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2098
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_3

    .line 2099
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 2104
    :goto_2
    return-void

    .line 2097
    :goto_3
    nop

    .line 2098
    if-eqz v0, :cond_4

    .line 2099
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 2100
    :catch_2
    move-exception v2

    .line 2101
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 2102
    :cond_4
    :goto_4
    throw v1
.end method

.method private processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    .locals 18
    .param p1, "entry"    # Landroid/media/MediaScanner$FileEntry;
    .param p2, "fileList"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 2204
    iget-object v8, v7, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    .line 2205
    .local v8, "path":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v9, v0

    .line 2206
    .local v9, "values":Landroid/content/ContentValues;
    const/16 v0, 0x2f

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 2207
    .local v10, "lastSlash":I
    if-ltz v10, :cond_7

    .line 2209
    iget-wide v0, v7, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 2212
    .local v0, "rowId":J
    const-string/jumbo v2, "name"

    invoke-virtual {v9, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2213
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 2214
    const-string/jumbo v3, "title"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2215
    if-nez v2, :cond_1

    .line 2217
    const/16 v3, 0x2e

    invoke-virtual {v8, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 2218
    .local v3, "lastDot":I
    if-gez v3, :cond_0

    add-int/lit8 v4, v10, 0x1

    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2219
    :cond_0
    add-int/lit8 v4, v10, 0x1

    invoke-virtual {v8, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v2, v4

    .line 2223
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "lastDot":I
    .local v11, "name":Ljava/lang/String;
    :cond_1
    move-object v11, v2

    const-string/jumbo v2, "name"

    invoke-virtual {v9, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    const-string v2, "date_modified"

    iget-wide v3, v7, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2226
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 2227
    const-string v2, "_data"

    invoke-virtual {v9, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    iget-object v2, v6, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v3, v6, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v9}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 2229
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2230
    const-string/jumbo v3, "members"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2240
    .end local v0    # "rowId":J
    .end local v2    # "uri":Landroid/net/Uri;
    .local v12, "membersUri":Landroid/net/Uri;
    .local v13, "rowId":J
    .local v15, "uri":Landroid/net/Uri;
    :goto_1
    move-wide v13, v0

    move-object v15, v2

    move-object v12, v3

    goto :goto_2

    .line 2232
    .end local v12    # "membersUri":Landroid/net/Uri;
    .end local v13    # "rowId":J
    .end local v15    # "uri":Landroid/net/Uri;
    .restart local v0    # "rowId":J
    :cond_2
    iget-object v2, v6, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2233
    .restart local v2    # "uri":Landroid/net/Uri;
    iget-object v3, v6, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v9, v4, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2236
    const-string/jumbo v3, "members"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2237
    .local v3, "membersUri":Landroid/net/Uri;
    iget-object v5, v6, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v5, v3, v4, v4}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 2240
    .end local v0    # "rowId":J
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "membersUri":Landroid/net/Uri;
    .restart local v12    # "membersUri":Landroid/net/Uri;
    .restart local v13    # "rowId":J
    .restart local v15    # "uri":Landroid/net/Uri;
    :goto_2
    add-int/lit8 v0, v10, 0x1

    const/4 v1, 0x0

    invoke-virtual {v8, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 2241
    .local v16, "playListDirectory":Ljava/lang/String;
    invoke-static {v8}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v5

    .line 2242
    .local v5, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    iget v1, v5, Landroid/media/MediaFile$MediaFileType;->fileType:I

    :goto_3
    move v4, v1

    .line 2244
    .local v4, "fileType":I
    const/16 v0, 0x29

    if-ne v4, v0, :cond_4

    .line 2245
    move-object v0, v6

    move-object v1, v8

    move-object/from16 v2, v16

    move-object v3, v12

    move v7, v4

    move-object v4, v9

    .line 2245
    .end local v4    # "fileType":I
    .local v7, "fileType":I
    move-object/from16 v17, v5

    move-object/from16 v5, p2

    .line 2245
    .end local v5    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .local v17, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_4

    .line 2246
    .end local v7    # "fileType":I
    .end local v17    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v4    # "fileType":I
    .restart local v5    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_4
    move v7, v4

    move-object/from16 v17, v5

    .line 2246
    .end local v4    # "fileType":I
    .end local v5    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v7    # "fileType":I
    .restart local v17    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    const/16 v0, 0x2a

    if-ne v7, v0, :cond_5

    .line 2247
    move-object v0, v6

    move-object v1, v8

    move-object/from16 v2, v16

    move-object v3, v12

    move-object v4, v9

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_4

    .line 2248
    :cond_5
    const/16 v0, 0x2b

    if-ne v7, v0, :cond_6

    .line 2249
    move-object v0, v6

    move-object v1, v8

    move-object/from16 v2, v16

    move-object v3, v12

    move-object v4, v9

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    .line 2251
    :cond_6
    :goto_4
    return-void

    .line 2207
    .end local v7    # "fileType":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "membersUri":Landroid/net/Uri;
    .end local v13    # "rowId":J
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "playListDirectory":Ljava/lang/String;
    .end local v17    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processPlayLists()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2254
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2255
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaScanner$FileEntry;>;"
    const/4 v1, 0x0

    .line 2259
    .local v1, "fileList":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v3, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v4, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "media_type=2"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 2261
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2262
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaScanner$FileEntry;

    .line 2264
    .local v2, "entry":Landroid/media/MediaScanner$FileEntry;
    iget-boolean v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-eqz v3, :cond_0

    .line 2265
    invoke-direct {p0, v2, v1}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2267
    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_0
    goto :goto_0

    .line 2270
    :cond_1
    if-eqz v1, :cond_3

    .line 2271
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2270
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 2271
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    .line 2268
    :catch_0
    move-exception v2

    .line 2270
    if-eqz v1, :cond_3

    goto :goto_1

    .line 2274
    :cond_3
    :goto_2
    return-void
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .line 2108
    const/4 v0, 0x0

    .line 2110
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2111
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2112
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v0, v2

    .line 2114
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 2115
    .local v2, "line":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2116
    :goto_0
    if-eqz v2, :cond_1

    .line 2118
    const-string v3, "File"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2119
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 2120
    .local v3, "equals":I
    if-lez v3, :cond_0

    .line 2121
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    .end local v3    # "equals":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 2127
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2133
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "line":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 2134
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2135
    :catch_0
    move-exception v1

    .line 2136
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "MediaScanner"

    const-string v3, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2138
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 2137
    :cond_3
    :goto_1
    goto :goto_2

    .line 2132
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 2129
    :catch_1
    move-exception v1

    .line 2130
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "MediaScanner"

    const-string v3, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2133
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_3

    .line 2134
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 2139
    :goto_2
    return-void

    .line 2132
    :goto_3
    nop

    .line 2133
    if-eqz v0, :cond_4

    .line 2134
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 2135
    :catch_2
    move-exception v2

    .line 2136
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 2137
    :cond_4
    :goto_4
    throw v1
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .line 2177
    const/4 v0, 0x0

    .line 2179
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2180
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2181
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 2183
    iget-object v2, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2184
    const-string v2, "UTF-8"

    invoke-static {v2}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v2

    new-instance v3, Landroid/media/MediaScanner$WplHandler;

    invoke-direct {v3, p0, p2, p3, p5}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 2185
    invoke-virtual {v3}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v3

    .line 2184
    invoke-static {v0, v2, v3}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 2187
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2195
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    if-eqz v0, :cond_1

    .line 2196
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2197
    :catch_0
    move-exception v1

    .line 2198
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "MediaScanner"

    const-string v3, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2200
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 2199
    :cond_1
    :goto_0
    goto :goto_1

    .line 2194
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2191
    :catch_1
    move-exception v1

    .line 2192
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2195
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    .line 2196
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2189
    :catch_2
    move-exception v1

    .line 2190
    .local v1, "e":Lorg/xml/sax/SAXException;
    :try_start_4
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2195
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    if-eqz v0, :cond_1

    .line 2196
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 2201
    :goto_1
    return-void

    .line 2194
    :goto_2
    nop

    .line 2195
    if-eqz v0, :cond_2

    .line 2196
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 2197
    :catch_3
    move-exception v2

    .line 2198
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 2199
    :cond_2
    :goto_3
    throw v1
.end method

.method private releaseResources()V
    .locals 1

    .line 1681
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->close()V

    .line 1683
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 1685
    :cond_0
    return-void
.end method

.method private native setLocale(Ljava/lang/String;)V
.end method

.method private setOnePlusDefaultRingtoneFileNames()V
    .locals 7

    .line 583
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ringtone"

    invoke-static {v0, v1}, Lcom/oneplus/util/RingtoneManagerUtils;->confirmCustSounds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "defaultAllSimRingtone":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 585
    const-string/jumbo v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    :cond_0
    sget v1, Landroid/media/MediaScanner;->DEFAULT_RINGTONE_COUNT:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilenames:[Ljava/lang/String;

    .line 589
    sget v1, Landroid/media/MediaScanner;->DEFAULT_RINGTONE_COUNT:I

    new-array v1, v1, [Z

    iput-object v1, p0, Landroid/media/MediaScanner;->mDefaultRingtonesSet:[Z

    .line 590
    const/4 v1, 0x0

    move v2, v1

    .line 590
    .local v2, "i":I
    :goto_0
    sget v3, Landroid/media/MediaScanner;->DEFAULT_RINGTONE_COUNT:I

    if-ge v2, v3, :cond_3

    .line 591
    iget-object v3, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/media/MediaScanner;->DEFAULT_RINGTONES:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Lcom/oneplus/util/RingtoneManagerUtils;->confirmCustSounds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 592
    .local v3, "defaultIterSimRingtone":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 593
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ro.config."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/media/MediaScanner;->DEFAULT_RINGTONES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 596
    :cond_1
    iget-object v4, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilenames:[Ljava/lang/String;

    aput-object v3, v4, v2

    .line 597
    sget-boolean v4, Landroid/media/MediaScanner;->DBG_LOGV:Z

    if-eqz v4, :cond_2

    const-string v4, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setOnePlusDefaultRingtoneFileNames("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Landroid/media/MediaScanner;->DEFAULT_RINGTONE_COUNT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/media/MediaScanner;->DEFAULT_RINGTONES:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    .end local v3    # "defaultIterSimRingtone":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 600
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification_sound"

    invoke-static {v2, v3}, Lcom/oneplus/util/RingtoneManagerUtils;->confirmCustSounds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 601
    iget-object v2, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 602
    const-string/jumbo v2, "ro.config.notification_sound"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 605
    :cond_4
    iget-object v2, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    const-string v3, "alarm_alert"

    invoke-static {v2, v3}, Lcom/oneplus/util/RingtoneManagerUtils;->confirmCustSounds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 606
    iget-object v2, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 607
    const-string/jumbo v2, "ro.config.alarm_alert"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 611
    :cond_5
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x6

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 613
    iget-object v1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "mms_notification"

    invoke-static {v1, v2}, Lcom/oneplus/util/RingtoneManagerUtils;->confirmCustSounds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, "strMmsSound":Ljava/lang/String;
    if-nez v1, :cond_6

    .line 615
    const-string/jumbo v2, "ro.config.mms_notification"

    iget-object v3, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 618
    :cond_6
    iput-object v1, p0, Landroid/media/MediaScanner;->mDefaultMmsNotificationFilename:Ljava/lang/String;

    .line 620
    .end local v1    # "strMmsSound":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "base"    # Ljava/lang/String;

    .line 1499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private wasRingtoneAlreadySet(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 1503
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1504
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1506
    .local v1, "indicatorName":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2

    .line 1507
    :catch_0
    move-exception v3

    .line 1508
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    return v2
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 2288
    iget-object v0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 2289
    iget-object v0, p0, Landroid/media/MediaScanner;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2290
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 2291
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2293
    :cond_0
    return-void
.end method

.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2298
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 2299
    iget-object v0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 2302
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaScanner;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2304
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2305
    nop

    .line 2306
    return-void

    .line 2304
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;
    .locals 17
    .param p1, "path"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 1947
    const/4 v2, 0x0

    move-object v3, v2

    .line 1949
    .local v3, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v7, "_data=?"

    .line 1950
    .local v7, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v8, v0

    .line 1951
    .local v8, "selectionArgs":[Ljava/lang/String;
    iget-object v4, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v5, v1, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    sget-object v6, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    .line 1953
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1954
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1955
    .local v10, "rowId":J
    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1956
    .local v15, "format":I
    const/4 v0, 0x3

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1957
    .local v13, "lastModified":J
    new-instance v0, Landroid/media/MediaScanner$FileEntry;

    move-object v9, v0

    move-object/from16 v12, p1

    invoke-direct/range {v9 .. v15}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1961
    if-eqz v3, :cond_0

    .line 1962
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1957
    :cond_0
    return-object v0

    .line 1961
    .end local v10    # "rowId":J
    .end local v13    # "lastModified":J
    .end local v15    # "format":I
    :cond_1
    if-eqz v3, :cond_3

    .line 1962
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1961
    .end local v7    # "where":Ljava/lang/String;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_2

    .line 1962
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1959
    :catch_0
    move-exception v0

    .line 1961
    if-eqz v3, :cond_3

    goto :goto_0

    .line 1965
    :cond_3
    :goto_1
    return-object v2
.end method

.method public scanDirectories([Ljava/lang/String;)V
    .locals 12
    .param p1, "directories"    # [Ljava/lang/String;

    .line 1692
    :try_start_0
    sget-boolean v0, Landroid/media/MediaScanner;->CONFIG_PROTECT_MEDIA:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1693
    invoke-direct {p0}, Landroid/media/MediaScanner;->deleteNoMediaInProtectedPath()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCheck_All_Again:Z

    if-eqz v0, :cond_2

    .line 1694
    :cond_0
    sget-object v0, Landroid/media/MediaScanner;->mExternalPath:Ljava/lang/String;

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1695
    iput-boolean v1, p0, Landroid/media/MediaScanner;->mCheck_All_Again:Z

    goto :goto_0

    .line 1697
    :cond_1
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mCheck_All_Again:Z

    .line 1699
    :goto_0
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCheck_All_Again:Z

    if-eqz v0, :cond_2

    const-string v0, "MediaScanner"

    const-string v3, ".NoMedia was removed in the protected folders. We will execute the database rebuild works for external path."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1704
    .local v3, "start":J
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1705
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1709
    .local v5, "prescan":J
    new-instance v1, Landroid/media/MediaInserter;

    iget-object v7, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const/16 v8, 0x1f4

    invoke-direct {v1, v7, v8}, Landroid/media/MediaInserter;-><init>(Landroid/content/ContentProviderClient;I)V

    iput-object v1, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1712
    nop

    .line 1712
    .local v2, "i":I
    :goto_1
    move v1, v2

    .line 1712
    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 1713
    aget-object v2, p1, v1

    iget-object v7, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {p0, v2, v7}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 1712
    add-int/lit8 v2, v1, 0x1

    .line 1712
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 1718
    .end local v2    # "i":I
    :cond_3
    iget-object v1, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v1}, Landroid/media/MediaInserter;->flushAll()V

    .line 1719
    iput-object v0, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1723
    .local v0, "scan":J
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 1724
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1726
    .local v7, "end":J
    sget-boolean v2, Landroid/media/MediaScanner;->DBG_LOGV:Z

    if-eqz v2, :cond_4

    .line 1727
    const-string v2, "MediaScanner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " prescan time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, v5, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    const-string v2, "MediaScanner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    scan time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, v0, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    const-string v2, "MediaScanner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "postscan time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, v7, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const-string v2, "MediaScanner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "   total time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, v7, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "scan":J
    .end local v3    # "start":J
    .end local v5    # "prescan":J
    .end local v7    # "end":J
    goto :goto_2

    .line 1741
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1738
    :catch_0
    move-exception v0

    .line 1739
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "MediaScanner"

    const-string v2, "RemoteException in MediaScanner.scan()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1739
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 1735
    :catch_1
    move-exception v0

    .line 1737
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v1, "MediaScanner"

    const-string v2, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1737
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_2

    .line 1732
    :catch_2
    move-exception v0

    .line 1734
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "MediaScanner"

    const-string v2, "SQLException in MediaScanner.scan()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1741
    .end local v0    # "e":Landroid/database/SQLException;
    :cond_4
    :goto_2
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1742
    nop

    .line 1743
    return-void

    .line 1741
    :goto_3
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    throw v0
.end method

.method public scanMtpFile(Ljava/lang/String;II)V
    .locals 24
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "objectHandle"    # I
    .param p3, "format"    # I

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    .line 1888
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v13

    .line 1889
    .local v13, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    const/4 v14, 0x0

    if-nez v13, :cond_0

    move v0, v14

    goto :goto_0

    :cond_0
    iget v0, v13, Landroid/media/MediaFile$MediaFileType;->fileType:I

    :goto_0
    move v15, v0

    .line 1890
    .local v15, "fileType":I
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 1891
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v9, v2, v4

    .line 1893
    .local v9, "lastModifiedSeconds":J
    invoke-static {v15}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {v15}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1894
    invoke-static {v15}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v15}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1895
    invoke-static {v15}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1898
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v3, v0

    .line 1899
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "_size"

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1900
    const-string v0, "date_modified"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1902
    :try_start_0
    new-array v0, v2, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v14

    .line 1903
    .local v0, "whereArgs":[Ljava/lang/String;
    iget-object v2, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v4, v1, Landroid/media/MediaScanner;->mVolumeName:Ljava/lang/String;

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "_id=?"

    invoke-virtual {v2, v4, v3, v5, v0}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1907
    .end local v0    # "whereArgs":[Ljava/lang/String;
    goto :goto_1

    .line 1905
    :catch_0
    move-exception v0

    .line 1906
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaScanner"

    const-string v4, "RemoteException in scanMtpFile"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1908
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 1911
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    move/from16 v7, p2

    iput v7, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1912
    const/4 v0, 0x0

    move-object/from16 v16, v0

    .line 1914
    .local v16, "fileList":Landroid/database/Cursor;
    :try_start_1
    invoke-static {v15}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v3, :cond_3

    .line 1916
    :try_start_2
    invoke-direct {v1, v0, v2}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1918
    invoke-virtual/range {p0 .. p1}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v0

    .line 1919
    .local v0, "entry":Landroid/media/MediaScanner$FileEntry;
    if-eqz v0, :cond_2

    .line 1920
    iget-object v2, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v3, v1, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v19, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v23}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1922
    .end local v16    # "fileList":Landroid/database/Cursor;
    .local v2, "fileList":Landroid/database/Cursor;
    :try_start_3
    invoke-direct {v1, v0, v2}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1924
    .end local v0    # "entry":Landroid/media/MediaScanner$FileEntry;
    move-object/from16 v16, v2

    goto :goto_2

    .line 1935
    :catchall_0
    move-exception v0

    move-wide/from16 v17, v9

    move-object/from16 v19, v11

    goto/16 :goto_a

    .line 1932
    :catch_1
    move-exception v0

    move-wide/from16 v17, v9

    move-object/from16 v19, v11

    goto/16 :goto_8

    .line 1924
    .end local v2    # "fileList":Landroid/database/Cursor;
    .restart local v16    # "fileList":Landroid/database/Cursor;
    :cond_2
    :goto_2
    nop

    .line 1935
    move-wide/from16 v17, v9

    move-object/from16 v19, v11

    .end local v9    # "lastModifiedSeconds":J
    .end local v11    # "file":Ljava/io/File;
    .end local v16    # "fileList":Landroid/database/Cursor;
    .local v0, "fileList":Landroid/database/Cursor;
    .local v17, "lastModifiedSeconds":J
    .local v19, "file":Ljava/io/File;
    :goto_3
    move-object/from16 v0, v16

    goto :goto_7

    .end local v0    # "fileList":Landroid/database/Cursor;
    .end local v17    # "lastModifiedSeconds":J
    .end local v19    # "file":Ljava/io/File;
    .restart local v9    # "lastModifiedSeconds":J
    .restart local v11    # "file":Ljava/io/File;
    .restart local v16    # "fileList":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-wide/from16 v17, v9

    move-object/from16 v19, v11

    .end local v9    # "lastModifiedSeconds":J
    .end local v11    # "file":Ljava/io/File;
    .end local v16    # "fileList":Landroid/database/Cursor;
    .restart local v2    # "fileList":Landroid/database/Cursor;
    .restart local v17    # "lastModifiedSeconds":J
    .restart local v19    # "file":Ljava/io/File;
    :goto_4
    move-object/from16 v2, v16

    goto/16 :goto_a

    .line 1932
    .end local v2    # "fileList":Landroid/database/Cursor;
    .end local v17    # "lastModifiedSeconds":J
    .end local v19    # "file":Ljava/io/File;
    .restart local v9    # "lastModifiedSeconds":J
    .restart local v11    # "file":Ljava/io/File;
    .restart local v16    # "fileList":Landroid/database/Cursor;
    :catch_2
    move-exception v0

    move-wide/from16 v17, v9

    move-object/from16 v19, v11

    .end local v9    # "lastModifiedSeconds":J
    .end local v11    # "file":Ljava/io/File;
    .end local v16    # "fileList":Landroid/database/Cursor;
    .restart local v2    # "fileList":Landroid/database/Cursor;
    .restart local v17    # "lastModifiedSeconds":J
    .restart local v19    # "file":Ljava/io/File;
    :goto_5
    move-object/from16 v2, v16

    goto :goto_8

    .line 1926
    .end local v2    # "fileList":Landroid/database/Cursor;
    .end local v17    # "lastModifiedSeconds":J
    .end local v19    # "file":Ljava/io/File;
    .restart local v9    # "lastModifiedSeconds":J
    .restart local v11    # "file":Ljava/io/File;
    .restart local v16    # "fileList":Landroid/database/Cursor;
    :cond_3
    :try_start_4
    invoke-direct {v1, v12, v14}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1929
    iget-object v0, v1, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    iget-object v4, v13, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v17

    const/16 v3, 0x3001

    move/from16 v8, p3

    if-ne v8, v3, :cond_4

    move/from16 v19, v2

    goto :goto_6

    :cond_4
    move/from16 v19, v14

    :goto_6
    const/16 v20, 0x1

    .line 1930
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v21
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1929
    move-object v2, v0

    move-object v3, v12

    move-wide v5, v9

    move-wide/from16 v7, v17

    move-wide/from16 v17, v9

    move/from16 v9, v19

    .end local v9    # "lastModifiedSeconds":J
    .restart local v17    # "lastModifiedSeconds":J
    move/from16 v10, v20

    move-object/from16 v19, v11

    move/from16 v11, v21

    .end local v11    # "file":Ljava/io/File;
    .restart local v19    # "file":Ljava/io/File;
    :try_start_5
    invoke-virtual/range {v2 .. v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 1935
    .end local v16    # "fileList":Landroid/database/Cursor;
    .restart local v0    # "fileList":Landroid/database/Cursor;
    :goto_7
    iput v14, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1936
    if-eqz v0, :cond_5

    .line 1937
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1939
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1940
    goto :goto_9

    .line 1935
    .end local v0    # "fileList":Landroid/database/Cursor;
    .restart local v16    # "fileList":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 1932
    :catch_3
    move-exception v0

    goto :goto_5

    .line 1935
    .end local v17    # "lastModifiedSeconds":J
    .end local v19    # "file":Ljava/io/File;
    .restart local v9    # "lastModifiedSeconds":J
    .restart local v11    # "file":Ljava/io/File;
    :catchall_3
    move-exception v0

    move-wide/from16 v17, v9

    move-object/from16 v19, v11

    move-object/from16 v2, v16

    .end local v9    # "lastModifiedSeconds":J
    .end local v11    # "file":Ljava/io/File;
    .restart local v17    # "lastModifiedSeconds":J
    .restart local v19    # "file":Ljava/io/File;
    goto :goto_a

    .line 1932
    .end local v17    # "lastModifiedSeconds":J
    .end local v19    # "file":Ljava/io/File;
    .restart local v9    # "lastModifiedSeconds":J
    .restart local v11    # "file":Ljava/io/File;
    :catch_4
    move-exception v0

    move-wide/from16 v17, v9

    move-object/from16 v19, v11

    move-object/from16 v2, v16

    .line 1933
    .end local v9    # "lastModifiedSeconds":J
    .end local v11    # "file":Ljava/io/File;
    .end local v16    # "fileList":Landroid/database/Cursor;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v2    # "fileList":Landroid/database/Cursor;
    .restart local v17    # "lastModifiedSeconds":J
    .restart local v19    # "file":Ljava/io/File;
    :goto_8
    :try_start_6
    const-string v3, "MediaScanner"

    const-string v4, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1935
    .end local v0    # "e":Landroid/os/RemoteException;
    iput v14, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1936
    if-eqz v2, :cond_6

    .line 1937
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1939
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1940
    nop

    .line 1941
    move-object v0, v2

    .end local v2    # "fileList":Landroid/database/Cursor;
    .local v0, "fileList":Landroid/database/Cursor;
    :goto_9
    return-void

    .line 1935
    .end local v0    # "fileList":Landroid/database/Cursor;
    .restart local v2    # "fileList":Landroid/database/Cursor;
    :catchall_4
    move-exception v0

    :goto_a
    iput v14, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1936
    if-eqz v2, :cond_7

    .line 1937
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1939
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    throw v0
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 14
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    move-object v1, p0

    move-object v12, p1

    .line 1748
    const/4 v0, 0x1

    const/4 v13, 0x0

    :try_start_0
    invoke-direct {v1, v12, v0}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1750
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1751
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1756
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v5, v2, v4

    .line 1759
    .local v5, "lastModifiedSeconds":J
    iget-object v2, v1, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1760
    invoke-static {v12}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v11

    .line 1759
    move-object v3, v12

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1765
    invoke-direct {v1}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1759
    return-object v2

    .line 1752
    .end local v5    # "lastModifiedSeconds":J
    :cond_1
    :goto_0
    nop

    .line 1765
    invoke-direct {v1}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1752
    return-object v13

    .line 1765
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1761
    :catch_0
    move-exception v0

    .line 1762
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MediaScanner"

    const-string v3, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1763
    nop

    .line 1765
    invoke-direct {v1}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1763
    return-object v13

    .line 1765
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-direct {v1}, Landroid/media/MediaScanner;->releaseResources()V

    throw v0
.end method

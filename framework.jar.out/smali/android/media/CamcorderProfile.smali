.class public Landroid/media/CamcorderProfile;
.super Ljava/lang/Object;
.source "CamcorderProfile.java"


# static fields
.field public static final QUALITY_1080P:I = 0x6

.field public static final QUALITY_2160P:I = 0x8

.field public static final QUALITY_2k:I = 0x2718

.field public static final QUALITY_480P:I = 0x4

.field public static final QUALITY_4KDCI:I = 0x2711

.field public static final QUALITY_720P:I = 0x5

.field public static final QUALITY_CIF:I = 0x3

.field public static final QUALITY_HIGH:I = 0x1

.field public static final QUALITY_HIGH_SPEED_1080P:I = 0x7d4

.field public static final QUALITY_HIGH_SPEED_2160P:I = 0x7d5

.field public static final QUALITY_HIGH_SPEED_480P:I = 0x7d2

.field public static final QUALITY_HIGH_SPEED_4KDCI:I = 0x2716

.field public static final QUALITY_HIGH_SPEED_720P:I = 0x7d3

.field public static final QUALITY_HIGH_SPEED_CIF:I = 0x2714

.field public static final QUALITY_HIGH_SPEED_HIGH:I = 0x7d1

.field private static final QUALITY_HIGH_SPEED_LIST_END:I = 0x7d5

.field private static final QUALITY_HIGH_SPEED_LIST_START:I = 0x7d0

.field public static final QUALITY_HIGH_SPEED_LOW:I = 0x7d0

.field public static final QUALITY_HIGH_SPEED_VGA:I = 0x2715

.field private static final QUALITY_LIST_END:I = 0x8

.field private static final QUALITY_LIST_START:I = 0x0

.field public static final QUALITY_LOW:I = 0x0

.field public static final QUALITY_QCIF:I = 0x2

.field public static final QUALITY_QHD:I = 0x2717

.field public static final QUALITY_QVGA:I = 0x7

.field public static final QUALITY_TIME_LAPSE_1080P:I = 0x3ee

.field public static final QUALITY_TIME_LAPSE_2160P:I = 0x3f0

.field public static final QUALITY_TIME_LAPSE_2k:I = 0x271a

.field public static final QUALITY_TIME_LAPSE_480P:I = 0x3ec

.field public static final QUALITY_TIME_LAPSE_4KDCI:I = 0x2713

.field public static final QUALITY_TIME_LAPSE_720P:I = 0x3ed

.field public static final QUALITY_TIME_LAPSE_CIF:I = 0x3eb

.field public static final QUALITY_TIME_LAPSE_HIGH:I = 0x3e9

.field private static final QUALITY_TIME_LAPSE_LIST_END:I = 0x3f0

.field private static final QUALITY_TIME_LAPSE_LIST_START:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_LOW:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_QCIF:I = 0x3ea

.field public static final QUALITY_TIME_LAPSE_QHD:I = 0x2719

.field public static final QUALITY_TIME_LAPSE_QVGA:I = 0x3ef

.field public static final QUALITY_TIME_LAPSE_VGA:I = 0x2712

.field private static final QUALITY_VENDOR_LIST_END:I = 0x271a

.field private static final QUALITY_VENDOR_LIST_START:I = 0x2710

.field public static final QUALITY_VGA:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "CamcorderProfile"


# instance fields
.field public audioBitRate:I

.field public audioChannels:I

.field public audioCodec:I

.field public audioSampleRate:I

.field public duration:I

.field public fileFormat:I

.field public quality:I

.field public videoBitRate:I

.field public videoCodec:I

.field public videoFrameHeight:I

.field public videoFrameRate:I

.field public videoFrameWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/CamcorderProfile;->native_init()V

    return-void
.end method

.method private constructor <init>(IIIIIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/CamcorderProfile;->duration:I

    iput p2, p0, Landroid/media/CamcorderProfile;->quality:I

    iput p3, p0, Landroid/media/CamcorderProfile;->fileFormat:I

    iput p4, p0, Landroid/media/CamcorderProfile;->videoCodec:I

    iput p5, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    iput p6, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput p7, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput p8, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput p9, p0, Landroid/media/CamcorderProfile;->audioCodec:I

    iput p10, p0, Landroid/media/CamcorderProfile;->audioBitRate:I

    iput p11, p0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iput p12, p0, Landroid/media/CamcorderProfile;->audioChannels:I

    return-void
.end method

.method public static get(I)Landroid/media/CamcorderProfile;
    .locals 4

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    invoke-static {v2, p0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v3

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static get(II)Landroid/media/CamcorderProfile;
    .locals 5

    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-le p1, v0, :cond_3

    :cond_0
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_1

    const/16 v0, 0x3f0

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x7d0

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7d5

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_5

    const/16 v0, 0x271a

    if-gt p1, v0, :cond_5

    :cond_3
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xc

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v0, Landroid/media/CamcorderProfile;->audioChannels:I

    if-lez v1, :cond_4

    iget v1, v0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    if-lez v1, :cond_4

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CamcorderProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting perm[android.permission.RECORD_AUDIO] from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/util/Permission;

    invoke-direct {v2, v1}, Landroid/util/Permission;-><init>(Landroid/content/Context;)V

    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v3}, Landroid/util/Permission;->requestPermissionAuto(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v4, 0x0

    return-object v4

    :cond_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported quality level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static hasProfile(I)Z
    .locals 5

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_0

    invoke-static {v3, p0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static hasProfile(II)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->native_has_camcorder_profile(II)Z

    move-result v0

    return v0
.end method

.method private static final native native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;
.end method

.method private static final native native_has_camcorder_profile(II)Z
.end method

.method private static final native native_init()V
.end method

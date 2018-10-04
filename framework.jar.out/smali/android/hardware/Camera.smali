.class public Landroid/hardware/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/Camera$Parameters;,
        Landroid/hardware/Camera$Area;,
        Landroid/hardware/Camera$Size;,
        Landroid/hardware/Camera$Coordinate;,
        Landroid/hardware/Camera$CameraMetaDataCallback;,
        Landroid/hardware/Camera$CameraDataCallback;,
        Landroid/hardware/Camera$ErrorCallback;,
        Landroid/hardware/Camera$Face;,
        Landroid/hardware/Camera$FaceDetectionListener;,
        Landroid/hardware/Camera$OnZoomChangeListener;,
        Landroid/hardware/Camera$IAppOpsCallbackWrapper;,
        Landroid/hardware/Camera$PictureCallback;,
        Landroid/hardware/Camera$ShutterCallback;,
        Landroid/hardware/Camera$AutoFocusMoveCallback;,
        Landroid/hardware/Camera$AutoFocusCallback;,
        Landroid/hardware/Camera$EventHandler;,
        Landroid/hardware/Camera$PreviewCallback;,
        Landroid/hardware/Camera$CameraInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field public static final CAMERA_ERROR_DISABLED:I = 0x3

.field public static final CAMERA_ERROR_EVICTED:I = 0x2

.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final CAMERA_FACE_DETECTION_SW:I = 0x1

.field public static final CAMERA_HAL_API_VERSION_1_0:I = 0x100

.field private static final CAMERA_HAL_API_VERSION_NORMAL_CONNECT:I = -0x2

.field private static final CAMERA_HAL_API_VERSION_OP_SERVICE:I = -0x64

.field private static final CAMERA_HAL_API_VERSION_UNSPECIFIED:I = -0x1

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final CAMERA_MSG_FOCUS:I = 0x4

.field private static final CAMERA_MSG_FOCUS_MOVE:I = 0x800

.field private static final CAMERA_MSG_META_DATA:I = 0x2000

.field private static final CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final CAMERA_MSG_SHUTTER:I = 0x2

.field private static final CAMERA_MSG_STATS_DATA:I = 0x1000

.field private static final CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final CAMERA_MSG_ZOOM:I = 0x8

.field private static final EACCESS:I = -0xd

.field private static final EBUSY:I = -0x10

.field private static final EINVAL:I = -0x16

.field private static final ENODEV:I = -0x13

.field private static final ENOSYS:I = -0x26

.field private static final EOPNOTSUPP:I = -0x5f

.field private static final EUSERS:I = -0x57

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Camera"


# instance fields
.field private mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field private mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private final mAutoFocusCallbackLock:Ljava/lang/Object;

.field private mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

.field private mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

.field private mDetailedErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mEventHandler:Landroid/hardware/Camera$EventHandler;

.field private mFaceDetectionRunning:Z

.field private mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private mHasAppOpsPlayAudio:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mShutterSoundLock"
    .end annotation
.end field

.field private mIsOPService:Z

.field private mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mNativeContext:J

.field private mOPServiceJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mOneShot:Z

.field private mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mShutterSoundEnabledFromApp:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mShutterSoundLock"
    .end annotation
.end field

.field private final mShutterSoundLock:Ljava/lang/Object;

.field private mUsingPreviewAllocation:Z

.field private mWithBuffer:Z

.field private mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    iput-boolean v1, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    iput-boolean v0, p0, Landroid/hardware/Camera;->mIsOPService:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera;->mOPServiceJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-direct {p0}, Landroid/hardware/Camera;->initAppOps()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    iput-boolean v1, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    iput-boolean v0, p0, Landroid/hardware/Camera;->mIsOPService:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera;->mOPServiceJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-direct {p0, p1}, Landroid/hardware/Camera;->cameraInitNormal(I)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Landroid/system/OsConstants;->EACCES:I

    neg-int v1, v1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-direct {p0}, Landroid/hardware/Camera;->initAppOps()V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown camera ID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    iput-boolean v1, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    iput-boolean v0, p0, Landroid/hardware/Camera;->mIsOPService:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera;->mOPServiceJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sget v1, Landroid/system/OsConstants;->EACCES:I

    neg-int v1, v1

    if-eq v0, v1, :cond_6

    const/16 v1, 0x13

    if-eq v0, v1, :cond_5

    const/16 v1, 0x26

    if-eq v0, v1, :cond_4

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x57

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the max number of camera devices were already opened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the camera device was already opened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the input arugments are invalid"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the hal version is not supported by this device"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because some methods are not implemented"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    return-void
.end method

.method private final native _addCallbackBuffer([BI)V
.end method

.method private final native _enableShutterSound(Z)Z
.end method

.method private static native _getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
.end method

.method public static native _getNumberOfCameras()I
.end method

.method private final native _startFaceDetection(I)V
.end method

.method private final native _stopFaceDetection()V
.end method

.method private final native _stopPreview()V
.end method

.method static synthetic access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mDetailedErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    return-object v0
.end method

.method static synthetic access$1700([BI)I
    .locals 1

    invoke-static {p0, p1}, Landroid/hardware/Camera;->byteToInt([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/hardware/Camera;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/Camera;->updateAppOpsPlayAudio()V

    return-void
.end method

.method static synthetic access$300(Landroid/hardware/Camera;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/Camera;->mIsOPService:Z

    return v0
.end method

.method static synthetic access$400(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mOPServiceJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$502(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p1
.end method

.method static synthetic access$600(Landroid/hardware/Camera;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    return v0
.end method

.method static synthetic access$700(Landroid/hardware/Camera;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    return v0
.end method

.method static synthetic access$800(Landroid/hardware/Camera;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method static synthetic access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method private final addCallbackBuffer([BI)V
    .locals 3

    const/16 v0, 0x10

    if-eq p2, v0, :cond_1

    const/16 v0, 0x80

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    return-void
.end method

.method private static byteToInt([BI)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    rsub-int/lit8 v2, v1, 0x3

    mul-int/lit8 v2, v2, 0x8

    rsub-int/lit8 v3, v1, 0x3

    add-int/2addr v3, p1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private cameraInitNormal(I)I
    .locals 1

    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    return v0
.end method

.method private cameraInitVersion(II)I
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iput-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    iput-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    iput-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    iput-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    iput-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    iput-object v0, p0, Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

    iput-object v0, p0, Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v0, p0, p0, v3}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v0, p0, p0, v3}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    :goto_0
    const/16 v0, -0x64

    if-ne p2, v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    iput-boolean v1, p0, Landroid/hardware/Camera;->mIsOPService:Z

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vendor.camera.hal1.packagelist"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x2c

    invoke-direct {v2, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v2, v1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 p2, 0x100

    goto :goto_2

    :cond_3
    goto :goto_1

    :cond_4
    :goto_2
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2, p1, p2, v0}, Landroid/hardware/Camera;->native_setup(Ljava/lang/Object;IILjava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static checkInitErrors(I)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private native enableFocusMoveCallback(I)V
.end method

.method public static getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .locals 5

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-static {p0, p1}, Landroid/hardware/Camera;->_getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p1, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Camera"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown camera ID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getEmptyParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    return-object v1
.end method

.method public static getNumberOfCameras()I
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "org.codeaurora.snapcam,com.oneplus.factorymode,com.oneplus.camera,com.oneplus.healthcheck"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x2c

    invoke-direct {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v3, v2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {}, Landroid/hardware/Camera;->_getNumberOfCameras()I

    move-result v3

    if-nez v0, :cond_2

    const/4 v4, 0x2

    if-le v3, v4, :cond_2

    const/4 v3, 0x2

    :cond_2
    return v3
.end method

.method public static getParametersCopy(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 3

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/hardware/Camera$Parameters;->access$2200(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera;

    move-result-object v0

    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->copyFrom(Landroid/hardware/Camera$Parameters;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initAppOps()V
    .locals 5

    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-direct {p0}, Landroid/hardware/Camera;->updateAppOpsPlayAudio()V

    new-instance v1, Landroid/hardware/Camera$IAppOpsCallbackWrapper;

    invoke-direct {v1, p0}, Landroid/hardware/Camera$IAppOpsCallbackWrapper;-><init>(Landroid/hardware/Camera;)V

    iput-object v1, p0, Landroid/hardware/Camera;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    :try_start_0
    iget-object v1, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v2, 0x1c

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/Camera;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Camera"

    const-string v3, "Error registering appOps callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    :goto_0
    return-void
.end method

.method private final native native_autoFocus()V
.end method

.method private final native native_cancelAutoFocus()V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_sendHistogramData()V
.end method

.method private final native native_sendMetaData()V
.end method

.method private final native native_setHistogramMode(Z)V
.end method

.method private final native native_setLongshot(Z)V
.end method

.method private final native native_setMetadataCb(Z)V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;IILjava/lang/String;)I
.end method

.method private final native native_takePicture(I)V
.end method

.method public static open()Landroid/hardware/Camera;
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/hardware/Camera;->requestCameraPermission()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    nop

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-static {v1, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v4, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_1

    new-instance v2, Landroid/hardware/Camera;

    invoke-direct {v2, v1}, Landroid/hardware/Camera;-><init>(I)V

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static open(I)Landroid/hardware/Camera;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/hardware/Camera;->requestCameraPermission()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0}, Landroid/hardware/Camera;-><init>(I)V

    return-object v0
.end method

.method public static openLegacy(II)Landroid/hardware/Camera;
    .locals 3

    const/16 v0, 0x100

    if-lt p1, v0, :cond_0

    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0, p1}, Landroid/hardware/Camera;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid HAL version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static openOPService()Landroid/hardware/Camera;
    .locals 3

    new-instance v0, Landroid/hardware/Camera;

    const/4 v1, -0x1

    const/16 v2, -0x64

    invoke-direct {v0, v1, v2}, Landroid/hardware/Camera;-><init>(II)V

    return-object v0
.end method

.method public static openUninitialized()Landroid/hardware/Camera;
    .locals 1

    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3

    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/hardware/Camera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private releaseAppOps()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/hardware/Camera;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private static requestCameraPermission()Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/util/Permission;

    invoke-direct {v1, v0}, Landroid/util/Permission;-><init>(Landroid/content/Context;)V

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2}, Landroid/util/Permission;->requestPermissionAuto(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    const-string v1, "Camera"

    const-string/jumbo v2, "request CAMERA permission fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method private final native setHasPreviewCallback(ZZ)V
.end method

.method private final native setPreviewCallbackSurface(Landroid/view/Surface;)V
.end method

.method private updateAppOpsPlayAudio()V
    .locals 9

    iget-object v0, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v5, 0x1c

    const/16 v6, 0xd

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v4

    move v2, v4

    :cond_0
    if-nez v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    iput-boolean v4, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v4, "Camera"

    const-string v5, "AppOpsService check audio operation failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    :goto_1
    iget-boolean v2, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    if-eq v1, v2, :cond_4

    iget-boolean v2, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    if-nez v2, :cond_3

    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v4}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_2

    :try_start_4
    monitor-exit v0

    return-void

    :cond_2
    goto :goto_2

    :catch_1
    move-exception v5

    const-string v6, "Camera"

    const-string v7, "Audio service is unavailable for queries"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-direct {p0, v3}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    goto :goto_3

    :cond_3
    iget-boolean v2, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    invoke-virtual {p0, v2}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    :cond_4
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method


# virtual methods
.method public final addCallbackBuffer([B)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    return-void
.end method

.method public final addRawImageCallbackBuffer([B)V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([BI)V

    return-void
.end method

.method public final autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/hardware/Camera;->native_autoFocus()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public cameraInitUnspecified(I)I
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    return v0
.end method

.method public final cancelAutoFocus()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/hardware/Camera;->native_cancelAutoFocus()V

    iget-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$EventHandler;->removeMessages(I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final createPreviewAllocation(Landroid/renderscript/RenderScript;I)Landroid/renderscript/Allocation;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/renderscript/RSIllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    new-instance v2, Landroid/renderscript/Type$Builder;

    sget-object v3, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v4, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    invoke-static {p1, v3, v4}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    const v3, 0x32315659

    invoke-virtual {v2, v3}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    invoke-virtual {v2}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v3

    or-int/lit8 v4, p2, 0x20

    invoke-static {p1, v3, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    return-object v3
.end method

.method public final disableShutterSound()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v0

    return v0
.end method

.method public final enableShutterSound(Z)Z
    .locals 8

    const/4 v0, 0x1

    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Camera"

    const-string v5, "Audio service is unavailable for queries"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v3, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return v3

    :cond_1
    iget-object v4, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iput-boolean p1, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    invoke-direct {p0, p1}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v5

    if-eqz p1, :cond_2

    iget-boolean v6, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    if-nez v6, :cond_2

    const-string v6, "Camera"

    const-string v7, "Shutter sound is not allowed by AppOpsManager"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    invoke-direct {p0, v3}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    :cond_2
    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    return-void
.end method

.method public getCurrentFocusPosition()I
    .locals 4

    new-instance v0, Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getCurrentFocusPosition()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getCurrentFocusPosition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_0
    return v2
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    new-instance v0, Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    return-object v0
.end method

.method public getWBCurrentCCT()I
    .locals 4

    new-instance v0, Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWBCurrentCCT()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWBCurrentCCT()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_0
    return v2
.end method

.method public final native lock()V
.end method

.method public final native previewEnabled()Z
.end method

.method public final native reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final release()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    invoke-direct {p0}, Landroid/hardware/Camera;->releaseAppOps()V

    return-void
.end method

.method public final sendHistogramData()V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/Camera;->native_sendHistogramData()V

    return-void
.end method

.method public final sendMetaData()V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/Camera;->native_sendMetaData()V

    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 1

    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->enableFocusMoveCallback(I)V

    return-void
.end method

.method public final setDetailedErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera;->mDetailedErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-void
.end method

.method public final native setDisplayOrientation(I)V
.end method

.method public final setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-void
.end method

.method public final setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-void
.end method

.method public final setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V
    .locals 1

    iput-object p1, p0, Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_setHistogramMode(Z)V

    return-void
.end method

.method public final setLongshot(Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/Camera;->native_setLongshot(Z)V

    return-void
.end method

.method public final setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V
    .locals 1

    iput-object p1, p0, Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_setMetadataCb(Z)V

    return-void
.end method

.method public setOPJpegCallback(Landroid/hardware/Camera$PictureCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera;->mOPServiceJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-void
.end method

.method public final setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2

    const/16 v0, 0x44

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4

    iget-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot change preview size while a preview allocation is configured."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public final setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2

    const/16 v0, 0x42

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    iput-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method public final setPreviewCallbackAllocation(Landroid/renderscript/Allocation;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getUsage()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getDataKind()Landroid/renderscript/Element$DataKind;

    move-result-object v3

    sget-object v4, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v0

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation is not of a YUV type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation usage does not include USAGE_IO_INPUT"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Allocation dimensions don\'t match preview dimensions: Allocation is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". Preview is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->setPreviewCallbackSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public final setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2

    const/16 v0, 0x43

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    nop

    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    :goto_0
    return-void
.end method

.method public final native setPreviewSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final native setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-void
.end method

.method public final startFaceDetection()V
    .locals 2

    iget-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_startFaceDetection(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final native startPreview()V
.end method

.method public final native startSmoothZoom(I)V
.end method

.method public final stopFaceDetection()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/Camera;->_stopFaceDetection()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    return-void
.end method

.method public final stopPreview()V
    .locals 2

    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPreview()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iput-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    iput-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    iput-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final native stopSmoothZoom()V
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/hardware/Camera;->requestCameraPermission()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x41

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 2

    const/16 v0, 0x41

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    iput-object p1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iput-object p2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    iput-object p3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    iput-object p4, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x80

    :cond_1
    iget-object v1, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x40

    :cond_2
    iget-object v1, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x100

    :cond_3
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_takePicture(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    return-void
.end method

.method public final native unlock()V
.end method

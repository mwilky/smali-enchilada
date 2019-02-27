.class public Landroid/filterpacks/videosink/MediaEncoderFilter;
.super Landroid/filterfw/core/Filter;
.source "MediaEncoderFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;
    }
.end annotation


# static fields
.field private static final NO_AUDIO_SOURCE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MediaEncoderFilter"


# instance fields
.field private mAudioSource:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "audioSource"
    .end annotation
.end field

.field private mCaptureTimeLapse:Z

.field private mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "errorListener"
    .end annotation
.end field

.field private mFd:Ljava/io/FileDescriptor;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFileDescriptor"
    .end annotation
.end field

.field private mFps:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "framerate"
    .end annotation
.end field

.field private mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "height"
    .end annotation
.end field

.field private mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "infoListener"
    .end annotation
.end field

.field private mLastTimeLapseFrameRealTimestampNs:J

.field private mLogVerbose:Z

.field private mMaxDurationMs:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxDurationMs"
    .end annotation
.end field

.field private mMaxFileSize:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxFileSize"
    .end annotation
.end field

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mNumFramesEncoded:I

.field private mOrientationHint:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientationHint"
    .end annotation
.end field

.field private mOutputFile:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFile"
    .end annotation
.end field

.field private mOutputFormat:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFormat"
    .end annotation
.end field

.field private mProfile:Landroid/media/CamcorderProfile;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recordingProfile"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private mRecording:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recording"
    .end annotation
.end field

.field private mRecordingActive:Z

.field private mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recordingDoneListener"
    .end annotation
.end field

.field private mScreen:Landroid/filterfw/core/GLFrame;

.field private mSourceRegion:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "inputRegion"
    .end annotation
.end field

.field private mSurfaceId:I

.field private mTimeBetweenTimeLapseFrameCaptureUs:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "timelapseRecordingIntervalUs"
    .end annotation
.end field

.field private mTimestampNs:J

.field private mVideoEncoder:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "videoEncoder"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecording:Z

    new-instance v0, Ljava/lang/String;

    const-string v1, "/sdcard/MediaEncoderOut.mp4"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOutputFile:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFd:Ljava/io/FileDescriptor;

    const/4 v1, -0x1

    iput v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mAudioSource:I

    iput-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    iput-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    iput-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    const/4 v1, 0x0

    iput v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOrientationHint:I

    iput-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    iput v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    iput v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    const/16 v0, 0x1e

    iput v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOutputFormat:I

    iput v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mVideoEncoder:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMaxFileSize:J

    iput v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMaxDurationMs:I

    iput-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    iput-boolean v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    iput-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    iput-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    iput v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    iput-boolean v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mCaptureTimeLapse:Z

    new-instance v1, Landroid/filterfw/geometry/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v3, Landroid/filterfw/geometry/Point;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v5, Landroid/filterfw/geometry/Point;

    invoke-direct {v5, v2, v4}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    move-object v2, v5

    new-instance v5, Landroid/filterfw/geometry/Point;

    invoke-direct {v5, v4, v4}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    move-object v4, v5

    new-instance v5, Landroid/filterfw/geometry/Quad;

    invoke-direct {v5, v1, v3, v2, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    iput-object v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    const-string v5, "MediaEncoderFilter"

    invoke-static {v5, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    return-void
.end method

.method private startRecording(Landroid/filterfw/core/FilterContext;)V
    .locals 10

    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaEncoderFilter"

    const-string v1, "Starting recording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_1

    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    if-lez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    iget-object v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    goto :goto_1

    :cond_2
    iget v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    iget v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    :goto_1
    invoke-virtual {v0, v4, v5}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    const/16 v7, 0x65

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v6

    check-cast v6, Landroid/filterfw/core/GLFrame;

    iput-object v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    new-instance v6, Landroid/media/MediaRecorder;

    invoke-direct {v6}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->updateMediaRecorderParams()V

    :try_start_0
    iget-object v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->start()V

    iget-boolean v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v6, :cond_3

    const-string v6, "MediaEncoderFilter"

    const-string v7, "Open: registering surface from Mediarecorder"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v6

    iget-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6, v7}, Landroid/filterfw/core/GLEnvironment;->registerSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I

    move-result v6

    iput v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSurfaceId:I

    iput v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    iput-boolean v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v6, "Unknown Exception inMediaRecorder.prepare()!"

    invoke-direct {v3, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v6, "IOException inMediaRecorder.prepare()!"

    invoke-direct {v3, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v2

    throw v2
.end method

.method private stopRecording(Landroid/filterfw/core/FilterContext;)V
    .locals 6

    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaEncoderFilter"

    const-string v1, "Stopping recording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    iput v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v2, :cond_1

    const-string v2, "MediaEncoderFilter"

    const-string v3, "Unregistering surface %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSurfaceId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSurfaceId:I

    invoke-virtual {v1, v0}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    iput-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    invoke-interface {v0}, Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;->onRecordingDone()V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Landroid/filterpacks/videosink/MediaRecorderStopException;

    const-string v3, "MediaRecorder.stop() failed!"

    invoke-direct {v2, v3, v0}, Landroid/filterpacks/videosink/MediaRecorderStopException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private updateMediaRecorderParams()V
    .locals 5

    iget-wide v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mCaptureTimeLapse:Z

    const/4 v0, 0x2

    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    iget-boolean v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mCaptureTimeLapse:Z

    if-nez v1, :cond_1

    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mAudioSource:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mAudioSource:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_1
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    if-lez v1, :cond_3

    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    if-lez v1, :cond_3

    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOutputFormat:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mVideoEncoder:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOrientationHint:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOutputFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    :goto_2
    :try_start_0
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMaxFileSize:J

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    const-string v2, "MediaEncoderFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting maxFileSize on MediaRecorder unsuccessful! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMaxDurationMs:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    return-void
.end method

.method private updateSourceRegion()V
    .locals 2

    new-instance v0, Landroid/filterfw/geometry/Quad;

    invoke-direct {v0}, Landroid/filterfw/geometry/Quad;-><init>()V

    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v1, v0}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    return-void
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 2

    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaEncoderFilter"

    const-string v1, "Closing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->stopRecording(Landroid/filterfw/core/FilterContext;)V

    :cond_1
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 3

    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaEncoderFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has been updated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "recording"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "inputRegion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->updateSourceRegion()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot change recording parameters when the filter is recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 2

    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaEncoderFilter"

    const-string v1, "Opening"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->updateSourceRegion()V

    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecording:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->startRecording(Landroid/filterfw/core/FilterContext;)V

    :cond_1
    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 2

    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaEncoderFilter"

    const-string v1, "Preparing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    const-string/jumbo v1, "videoframe"

    invoke-virtual {p0, v1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecording:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->startRecording(Landroid/filterfw/core/FilterContext;)V

    :cond_0
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecording:Z

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->stopRecording(Landroid/filterfw/core/FilterContext;)V

    :cond_1
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mCaptureTimeLapse:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/filterpacks/videosink/MediaEncoderFilter;->skipFrameAndModifyTimestamp(J)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_3
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    :cond_4
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSurfaceId:I

    invoke-virtual {v0, v2}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2, v1, v3}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    iget-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    invoke-virtual {v0, v2, v3}, Landroid/filterfw/core/GLEnvironment;->setSurfaceTimestamp(J)V

    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    return-void
.end method

.method public setupPorts()V
    .locals 2

    const-string/jumbo v0, "videoframe"

    const/4 v1, 0x3

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    return-void
.end method

.method public skipFrameAndModifyTimestamp(J)Z
    .locals 8

    iget v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-wide p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    iput-wide p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaEncoderFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timelapse: FIRST frame, last real t= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", setting t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    iget-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    const-wide/16 v4, 0x3e8

    iget-wide v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_3

    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_2

    const-string v0, "MediaEncoderFilter"

    const-string/jumbo v1, "timelapse: skipping intermediate frame"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_4

    const-string v0, "MediaEncoderFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timelapse: encoding frame, Timestamp t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", last real t= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", interval = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-wide p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    iget-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    iget v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    int-to-long v4, v0

    const-wide/32 v6, 0x3b9aca00

    div-long v4, v6, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_5

    const-string v0, "MediaEncoderFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timelapse: encoding frame, setting t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", delta t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    int-to-long v3, v3

    div-long/2addr v6, v3

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1

    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    :cond_1
    return-void
.end method

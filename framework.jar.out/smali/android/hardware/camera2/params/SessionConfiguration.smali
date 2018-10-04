.class public final Landroid/hardware/camera2/params/SessionConfiguration;
.super Ljava/lang/Object;
.source "SessionConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/SessionConfiguration$SessionMode;
    }
.end annotation


# static fields
.field public static final SESSION_HIGH_SPEED:I = 0x1

.field public static final SESSION_REGULAR:I = 0x0

.field public static final SESSION_VENDOR_START:I = 0x8000


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

.field private mOutputConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

.field private mSessionType:I

.field private mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    iput p1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    iput-object p4, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iput-object p3, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getInputConfiguration()Landroid/hardware/camera2/params/InputConfiguration;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    return-object v0
.end method

.method public getOutputConfigurations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    return-object v0
.end method

.method public getSessionParameters()Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public getSessionType()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    return v0
.end method

.method public getStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-object v0
.end method

.method public setInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V
    .locals 2

    iget v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iput-object p1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported for high speed session types"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    return-void
.end method

.class final Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TvInputCallbackRecord"
.end annotation


# instance fields
.field private final mCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/tv/TvInputManager$TvInputCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    iput-object p1, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    .line 798
    iput-object p2, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mHandler:Landroid/os/Handler;

    .line 799
    return-void
.end method

.method static synthetic access$200(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;)Landroid/media/tv/TvInputManager$TvInputCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    .line 792
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    return-object v0
.end method


# virtual methods
.method public getCallback()Landroid/media/tv/TvInputManager$TvInputCallback;
    .locals 1

    .line 802
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    return-object v0
.end method

.method public postInputAdded(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 806
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$1;-><init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 812
    return-void
.end method

.method public postInputRemoved(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 815
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$2;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$2;-><init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 821
    return-void
.end method

.method public postInputStateChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 833
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$4;-><init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 839
    return-void
.end method

.method public postInputUpdated(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 824
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$3;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$3;-><init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 830
    return-void
.end method

.method public postTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V
    .locals 2
    .param p1, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .line 842
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$5;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$5;-><init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Landroid/media/tv/TvInputInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 848
    return-void
.end method

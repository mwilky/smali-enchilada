.class Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;
.super Ljava/lang/Object;
.source "SoundTriggerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTriggerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandlerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/hardware/soundtrigger/SoundTriggerModule;


# direct methods
.method constructor <init>(Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)V
    .locals 2
    .param p2, "listener"    # Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 130
    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;->this$0:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    if-eqz p3, :cond_0

    .line 134
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    goto :goto_0

    .line 136
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 140
    .restart local v0    # "looper":Landroid/os/Looper;
    :goto_0
    if-eqz v0, :cond_1

    .line 142
    new-instance v1, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;-><init>(Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;Landroid/os/Looper;Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;)V

    iput-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_1

    .line 174
    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 176
    :goto_1
    return-void
.end method


# virtual methods
.method handler()Landroid/os/Handler;
    .locals 1

    .line 179
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

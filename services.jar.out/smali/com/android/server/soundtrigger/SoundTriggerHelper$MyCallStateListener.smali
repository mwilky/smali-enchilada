.class Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "SoundTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->access$000(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->access$100(Lcom/android/server/soundtrigger/SoundTriggerHelper;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

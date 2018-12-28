.class public Lcom/android/server/preload/PreloadUtils$PreloadUtilsHandler;
.super Landroid/os/Handler;
.source "PreloadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/PreloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreloadUtilsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/preload/PreloadUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/preload/PreloadUtils;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/preload/PreloadUtils$PreloadUtilsHandler;->this$0:Lcom/android/server/preload/PreloadUtils;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;->mPackageName:Ljava/lang/String;

    const-string v2, "android"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;->mPackageName:Ljava/lang/String;

    const-string v2, "com.oppo.launcher"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;->mPackageName:Ljava/lang/String;

    const-string v2, "com.oppo.quicksearchbox"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/preload/PreloadUtils$PreloadUtilsHandler;->this$0:Lcom/android/server/preload/PreloadUtils;

    invoke-static {v1}, Lcom/android/server/preload/PreloadUtils;->access$000(Lcom/android/server/preload/PreloadUtils;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/preload/PreloadUtils$PreloadUtilsHandler;->this$0:Lcom/android/server/preload/PreloadUtils;

    invoke-static {v1}, Lcom/android/server/preload/PreloadUtils;->access$000(Lcom/android/server/preload/PreloadUtils;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;->mPreloadTaskInfo:Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;->mPreloadTaskInfo:Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;

    iget-boolean v2, v2, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;->mForceInvisible:Z

    iput-boolean v2, v1, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;->mForceInvisible:Z

    :cond_2
    iget-object v2, p0, Lcom/android/server/preload/PreloadUtils$PreloadUtilsHandler;->this$0:Lcom/android/server/preload/PreloadUtils;

    invoke-static {v2}, Lcom/android/server/preload/PreloadUtils;->access$000(Lcom/android/server/preload/PreloadUtils;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/server/preload/PreloadUtils$PreloadUtilsHandler;->this$0:Lcom/android/server/preload/PreloadUtils;

    invoke-static {v1}, Lcom/android/server/preload/PreloadUtils;->access$000(Lcom/android/server/preload/PreloadUtils;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;

    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;->mPackageName:Ljava/lang/String;

    const-string v2, "android"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;->mPackageName:Ljava/lang/String;

    const-string v2, "com.oppo.launcher"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;->mPackageName:Ljava/lang/String;

    const-string v2, "com.oppo.quicksearchbox"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/server/preload/PreloadUtils$PreloadUtilsHandler;->this$0:Lcom/android/server/preload/PreloadUtils;

    invoke-static {v1}, Lcom/android/server/preload/PreloadUtils;->access$000(Lcom/android/server/preload/PreloadUtils;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;->mPackageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;->mPreloadTaskInfo:Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    :goto_2
    return-void

    :cond_9
    :goto_3
    return-void

    :cond_a
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

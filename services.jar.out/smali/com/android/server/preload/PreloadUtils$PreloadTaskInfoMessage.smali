.class Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;
.super Ljava/lang/Object;
.source "PreloadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/PreloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadTaskInfoMessage"
.end annotation


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public mPreloadTaskInfo:Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;

.field final synthetic this$0:Lcom/android/server/preload/PreloadUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/preload/PreloadUtils;Ljava/lang/String;Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;->this$0:Lcom/android/server/preload/PreloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;->mPreloadTaskInfo:Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;

    iput-object p2, p0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;->mPreloadTaskInfo:Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;

    return-void
.end method

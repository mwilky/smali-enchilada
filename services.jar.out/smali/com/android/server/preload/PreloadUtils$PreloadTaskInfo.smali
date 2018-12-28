.class Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;
.super Ljava/lang/Object;
.source "PreloadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/PreloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadTaskInfo"
.end annotation


# instance fields
.field public mForceInvisible:Z

.field public mTaskId:I

.field final synthetic this$0:Lcom/android/server/preload/PreloadUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/preload/PreloadUtils;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;->this$0:Lcom/android/server/preload/PreloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;->mTaskId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;->mForceInvisible:Z

    iput p2, p0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;->mTaskId:I

    iput-boolean p3, p0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;->mForceInvisible:Z

    return-void
.end method

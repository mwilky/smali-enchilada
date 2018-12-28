.class Lcom/android/server/preload/OneplusAppPreload$PreloadHandler$CPU;
.super Ljava/lang/Object;
.source "OneplusAppPreload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CPU"
.end annotation


# instance fields
.field mIdle:F

.field mTotal:F

.field final synthetic this$1:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler$CPU;->this$1:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler$CPU;->mTotal:F

    iput p1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler$CPU;->mIdle:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;Lcom/android/server/preload/OneplusAppPreload$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler$CPU;-><init>(Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;)V

    return-void
.end method

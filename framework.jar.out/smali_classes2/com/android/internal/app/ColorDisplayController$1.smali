.class Lcom/android/internal/app/ColorDisplayController$1;
.super Landroid/database/ContentObserver;
.source "ColorDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ColorDisplayController;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ColorDisplayController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ColorDisplayController$1;->this$0:Lcom/android/internal/app/ColorDisplayController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController$1;->this$0:Lcom/android/internal/app/ColorDisplayController;

    invoke-static {v1, v0}, Lcom/android/internal/app/ColorDisplayController;->access$000(Lcom/android/internal/app/ColorDisplayController;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

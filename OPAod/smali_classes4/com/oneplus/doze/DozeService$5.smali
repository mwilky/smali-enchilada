.class Lcom/oneplus/doze/DozeService$5;
.super Landroid/database/ContentObserver;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/doze/DozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/doze/DozeService;


# direct methods
.method constructor <init>(Lcom/oneplus/doze/DozeService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq p3, v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

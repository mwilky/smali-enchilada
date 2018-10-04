.class Lcom/oneplus/util/OemSceneModeUtils$2;
.super Ljava/lang/Object;
.source "OemSceneModeUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/util/OemSceneModeUtils;->popNotify(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/util/OemSceneModeUtils$2;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/util/OemSceneModeUtils;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeUtils"

    const-string v1, " ignore button clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/util/OemSceneModeUtils$2;->val$pkgName:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/util/OemSceneModeUtils;->access$100(Ljava/lang/String;)V

    return-void
.end method

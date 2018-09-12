.class public Lcom/oneplus/aod/AodAquirePermission;
.super Landroid/app/Activity;
.source "AodAquirePermission.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onResume()V
    .locals 2

    .line 18
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 20
    const-string v0, "android.permission.READ_CONTACTS"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "android.permission.READ_CONTACTS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/AodAquirePermission;->finish()V

    .line 31
    return-void
.end method

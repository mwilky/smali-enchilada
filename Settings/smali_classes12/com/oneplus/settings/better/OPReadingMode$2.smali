.class Lcom/oneplus/settings/better/OPReadingMode$2;
.super Landroid/database/ContentObserver;
.source "OPReadingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPReadingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPReadingMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPReadingMode;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/better/OPReadingMode;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 141
    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingMode$2;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode$2;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPReadingMode;->access$500(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_status"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 148
    .local v0, "value":I
    iget-object v1, p0, Lcom/oneplus/settings/better/OPReadingMode$2;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPReadingMode;->access$600(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/oneplus/settings/better/OPReadingMode$2;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPReadingMode;->access$600(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 151
    :cond_1
    return-void
.end method

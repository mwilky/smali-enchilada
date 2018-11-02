.class Lcom/oneplus/settings/OPFontStyleSettings$1;
.super Ljava/lang/Object;
.source "OPFontStyleSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPFontStyleSettings;->setFontStyle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPFontStyleSettings;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPFontStyleSettings;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleSettings$1;->this$0:Lcom/oneplus/settings/OPFontStyleSettings;

    iput p2, p0, Lcom/oneplus/settings/OPFontStyleSettings$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleSettings$1;->this$0:Lcom/oneplus/settings/OPFontStyleSettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPFontStyleSettings;->access$000(Lcom/oneplus/settings/OPFontStyleSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_font_mode"

    iget v2, p0, Lcom/oneplus/settings/OPFontStyleSettings$1;->val$value:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.OEM_FONT_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.skin"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "oem_font_mode"

    iget v2, p0, Lcom/oneplus/settings/OPFontStyleSettings$1;->val$value:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/OPFontStyleSettings$1;->this$0:Lcom/oneplus/settings/OPFontStyleSettings;

    invoke-static {v1}, Lcom/oneplus/settings/OPFontStyleSettings;->access$100(Lcom/oneplus/settings/OPFontStyleSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

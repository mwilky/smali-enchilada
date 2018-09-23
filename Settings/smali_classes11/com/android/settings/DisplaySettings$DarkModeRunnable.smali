.class Lcom/android/settings/DisplaySettings$DarkModeRunnable;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DarkModeRunnable"
.end annotation


# instance fields
.field dValue:Z

.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->dValue:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/DisplaySettings;Z)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->dValue:Z

    iput-boolean p2, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->dValue:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$000(Lcom/android/settings/DisplaySettings;)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$100(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_black_mode"

    iget-boolean v2, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->dValue:Z

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.OEM_THEME_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.skin"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "oem_black_mode"

    iget-boolean v2, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->dValue:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->access$100(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setValue(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->dValue:Z

    return-void
.end method

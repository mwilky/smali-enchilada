.class Lcom/oneplus/setting/lib/SettingsDrawerActivity$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/setting/lib/SettingsDrawerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/setting/lib/SettingsDrawerActivity;


# direct methods
.method private constructor <init>(Lcom/oneplus/setting/lib/SettingsDrawerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/setting/lib/SettingsDrawerActivity$PackageReceiver;->this$0:Lcom/oneplus/setting/lib/SettingsDrawerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/setting/lib/SettingsDrawerActivity;Lcom/oneplus/setting/lib/SettingsDrawerActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/setting/lib/SettingsDrawerActivity$PackageReceiver;-><init>(Lcom/oneplus/setting/lib/SettingsDrawerActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoriesUpdateTask;

    iget-object v1, p0, Lcom/oneplus/setting/lib/SettingsDrawerActivity$PackageReceiver;->this$0:Lcom/oneplus/setting/lib/SettingsDrawerActivity;

    invoke-direct {v0, v1}, Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoriesUpdateTask;-><init>(Lcom/oneplus/setting/lib/SettingsDrawerActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoriesUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

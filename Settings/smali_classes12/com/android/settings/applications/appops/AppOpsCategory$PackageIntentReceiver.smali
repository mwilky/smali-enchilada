.class public Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appops/AppOpsCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field final mLoader:Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;)V
    .locals 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;->mLoader:Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;->mLoader:Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;

    invoke-virtual {v1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;->mLoader:Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;

    invoke-virtual {v2}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;->mLoader:Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;

    invoke-virtual {v0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onContentChanged()V

    return-void
.end method

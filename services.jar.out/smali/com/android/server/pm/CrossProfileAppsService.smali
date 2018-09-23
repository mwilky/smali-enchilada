.class public Lcom/android/server/pm/CrossProfileAppsService;
.super Lcom/android/server/SystemService;
.source "CrossProfileAppsService.java"


# instance fields
.field private mServiceImpl:Lcom/android/server/pm/CrossProfileAppsServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileAppsService;->mServiceImpl:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    const-string v0, "crossprofileapps"

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsService;->mServiceImpl:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/CrossProfileAppsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

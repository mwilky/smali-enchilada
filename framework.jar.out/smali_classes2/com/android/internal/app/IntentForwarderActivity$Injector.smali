.class public interface abstract Lcom/android/internal/app/IntentForwarderActivity$Injector;
.super Ljava/lang/Object;
.source "IntentForwarderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IntentForwarderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Injector"
.end annotation


# virtual methods
.method public abstract getIPackageManager()Landroid/content/pm/IPackageManager;
.end method

.method public abstract getPackageManager()Landroid/content/pm/PackageManager;
.end method

.method public abstract getUserManager()Landroid/os/UserManager;
.end method

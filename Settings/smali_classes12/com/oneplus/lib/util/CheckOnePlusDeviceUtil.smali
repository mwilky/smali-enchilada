.class public Lcom/oneplus/lib/util/CheckOnePlusDeviceUtil;
.super Ljava/lang/Object;
.source "CheckOnePlusDeviceUtil.java"


# static fields
.field public static final FEATURE_ONEPLUS_DEVICE:Ljava/lang/String; = "com.oneplus.software.oos"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOnePlusDevice(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oneplus.software.oos"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

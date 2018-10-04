.class public abstract Lorg/ifaa/android/manager/IFAAManager;
.super Ljava/lang/Object;
.source "IFAAManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDeviceModel()Ljava/lang/String;
.end method

.method public abstract getSupportBIOTypes(Landroid/content/Context;)I
.end method

.method public abstract getVersion()I
.end method

.method public abstract startBIOManager(Landroid/content/Context;I)I
.end method

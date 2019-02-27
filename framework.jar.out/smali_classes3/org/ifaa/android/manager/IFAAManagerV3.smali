.class public abstract Lorg/ifaa/android/manager/IFAAManagerV3;
.super Lorg/ifaa/android/manager/IFAAManagerV2;
.source "IFAAManagerV3.java"


# static fields
.field public static final KEY_FINGERPRINT_FULLVIEW:Ljava/lang/String; = "org.ifaa.ext.key.CUSTOM_VIEW"

.field public static final KEY_GET_SENSOR_LOCATION:Ljava/lang/String; = "org.ifaa.ext.key.GET_SENSOR_LOCATION"

.field public static final VALUE_FINGERPRINT_DISABLE:Ljava/lang/String; = "disable"

.field public static final VLAUE_FINGERPRINT_ENABLE:Ljava/lang/String; = "enable"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/ifaa/android/manager/IFAAManagerV2;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getExtInfo(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setExtInfo(ILjava/lang/String;Ljava/lang/String;)V
.end method

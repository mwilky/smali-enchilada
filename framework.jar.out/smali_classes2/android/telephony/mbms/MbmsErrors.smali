.class public Landroid/telephony/mbms/MbmsErrors;
.super Ljava/lang/Object;
.source "MbmsErrors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/MbmsErrors$DownloadErrors;,
        Landroid/telephony/mbms/MbmsErrors$StreamingErrors;,
        Landroid/telephony/mbms/MbmsErrors$GeneralErrors;,
        Landroid/telephony/mbms/MbmsErrors$InitializationErrors;
    }
.end annotation


# static fields
.field public static final ERROR_MIDDLEWARE_LOST:I = 0x3

.field public static final ERROR_MIDDLEWARE_NOT_BOUND:I = 0x2

.field public static final ERROR_NO_UNIQUE_MIDDLEWARE:I = 0x1

.field public static final SUCCESS:I = 0x0

.field public static final UNKNOWN:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

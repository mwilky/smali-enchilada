.class public Landroidx/slice/core/SliceHints;
.super Ljava/lang/Object;
.source "SliceHints.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/core/SliceHints$ImageMode;
    }
.end annotation


# static fields
.field public static final HINT_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final HINT_LAST_UPDATED:Ljava/lang/String; = "last_updated"

.field public static final HINT_PERMISSION_REQUEST:Ljava/lang/String; = "permission_request"

.field public static final HINT_TTL:Ljava/lang/String; = "ttl"

.field public static final ICON_IMAGE:I = 0x0

.field public static final INFINITY:J = -0x1L

.field public static final LARGE_IMAGE:I = 0x2

.field public static final SLICE_METADATA_KEY:Ljava/lang/String; = "android.metadata.SLICE_URI"

.field public static final SMALL_IMAGE:I = 0x1

.field public static final SUBTYPE_MILLIS:Ljava/lang/String; = "millis"

.field public static final SUBTYPE_MIN:Ljava/lang/String; = "min"

.field public static final UNKNOWN_IMAGE:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

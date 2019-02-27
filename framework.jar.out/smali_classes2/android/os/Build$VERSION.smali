.class public Landroid/os/Build$VERSION;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VERSION"
.end annotation


# static fields
.field public static final ACTIVE_CODENAMES:[Ljava/lang/String;

.field private static final ALL_CODENAMES:[Ljava/lang/String;

.field public static final BASE_OS:Ljava/lang/String;

.field public static final CODENAME:Ljava/lang/String;

.field public static final FIRST_SDK_INT:I

.field public static final INCREMENTAL:Ljava/lang/String;

.field public static final IS_CTA_BUILD:Z

.field public static final MIN_SUPPORTED_TARGET_SDK_INT:I

.field public static final PREVIEW_SDK_INT:I

.field public static final RELEASE:Ljava/lang/String;

.field public static final RESOURCES_SDK_INT:I

.field public static final SDK:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SDK_INT:I

.field public static final SECURITY_PATCH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 205
    const-string/jumbo v0, "ro.build.version.incremental"

    invoke-static {v0}, Landroid/os/Build;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 210
    const-string/jumbo v0, "ro.build.version.release"

    invoke-static {v0}, Landroid/os/Build;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 215
    const-string/jumbo v0, "ro.build.version.base_os"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->BASE_OS:Ljava/lang/String;

    .line 220
    const-string/jumbo v0, "ro.build.version.security_patch"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 230
    const-string/jumbo v0, "ro.build.version.sdk"

    invoke-static {v0}, Landroid/os/Build;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 241
    const-string/jumbo v0, "ro.build.version.sdk"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 256
    const-string/jumbo v0, "ro.product.first_api_level"

    .line 257
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/Build$VERSION;->FIRST_SDK_INT:I

    .line 277
    const-string/jumbo v0, "ro.build.version.preview_sdk"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    .line 284
    const-string/jumbo v0, "ro.build.version.codename"

    invoke-static {v0}, Landroid/os/Build;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 286
    const-string/jumbo v0, "ro.build.version.all_codenames"

    const-string v2, ","

    .line 287
    invoke-static {v0, v2}, Landroid/os/Build;->access$100(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->ALL_CODENAMES:[Ljava/lang/String;

    .line 292
    const-string v0, "REL"

    sget-object v2, Landroid/os/Build$VERSION;->ALL_CODENAMES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    new-array v0, v1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->ALL_CODENAMES:[Ljava/lang/String;

    :goto_0
    sput-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    .line 302
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v2, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v0, v2

    sput v0, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 309
    sget-object v0, Landroid/os/Build;->REGION:Ljava/lang/String;

    const-string v2, "CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    .line 319
    const-string/jumbo v0, "ro.build.version.min_supported_target_sdk"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/Build$VERSION;->MIN_SUPPORTED_TARGET_SDK_INT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public final Landroid/hardware/radio/RadioMetadata;
.super Ljava/lang/Object;
.source "RadioMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioMetadata$Builder;,
        Landroid/hardware/radio/RadioMetadata$Clock;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final METADATA_KEYS_TYPE:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final METADATA_KEY_ALBUM:Ljava/lang/String; = "android.hardware.radio.metadata.ALBUM"

.field public static final METADATA_KEY_ART:Ljava/lang/String; = "android.hardware.radio.metadata.ART"

.field public static final METADATA_KEY_ARTIST:Ljava/lang/String; = "android.hardware.radio.metadata.ARTIST"

.field public static final METADATA_KEY_CLOCK:Ljava/lang/String; = "android.hardware.radio.metadata.CLOCK"

.field public static final METADATA_KEY_DAB_COMPONENT_NAME:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_COMPONENT_NAME"

.field public static final METADATA_KEY_DAB_COMPONENT_NAME_SHORT:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_COMPONENT_NAME_SHORT"

.field public static final METADATA_KEY_DAB_ENSEMBLE_NAME:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME"

.field public static final METADATA_KEY_DAB_ENSEMBLE_NAME_SHORT:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME_SHORT"

.field public static final METADATA_KEY_DAB_SERVICE_NAME:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_SERVICE_NAME"

.field public static final METADATA_KEY_DAB_SERVICE_NAME_SHORT:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_SERVICE_NAME_SHORT"

.field public static final METADATA_KEY_GENRE:Ljava/lang/String; = "android.hardware.radio.metadata.GENRE"

.field public static final METADATA_KEY_ICON:Ljava/lang/String; = "android.hardware.radio.metadata.ICON"

.field public static final METADATA_KEY_PROGRAM_NAME:Ljava/lang/String; = "android.hardware.radio.metadata.PROGRAM_NAME"

.field public static final METADATA_KEY_RBDS_PTY:Ljava/lang/String; = "android.hardware.radio.metadata.RBDS_PTY"

.field public static final METADATA_KEY_RDS_PI:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_PI"

.field public static final METADATA_KEY_RDS_PS:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_PS"

.field public static final METADATA_KEY_RDS_PTY:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_PTY"

.field public static final METADATA_KEY_RDS_RT:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_RT"

.field public static final METADATA_KEY_TITLE:Ljava/lang/String; = "android.hardware.radio.metadata.TITLE"

.field private static final METADATA_TYPE_BITMAP:I = 0x2

.field private static final METADATA_TYPE_CLOCK:I = 0x3

.field private static final METADATA_TYPE_INT:I = 0x0

.field private static final METADATA_TYPE_INVALID:I = -0x1

.field private static final METADATA_TYPE_TEXT:I = 0x1

.field private static final NATIVE_KEY_ALBUM:I = 0x7

.field private static final NATIVE_KEY_ART:I = 0xa

.field private static final NATIVE_KEY_ARTIST:I = 0x6

.field private static final NATIVE_KEY_CLOCK:I = 0xb

.field private static final NATIVE_KEY_GENRE:I = 0x8

.field private static final NATIVE_KEY_ICON:I = 0x9

.field private static final NATIVE_KEY_INVALID:I = -0x1

.field private static final NATIVE_KEY_MAPPING:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_KEY_RBDS_PTY:I = 0x3

.field private static final NATIVE_KEY_RDS_PI:I = 0x0

.field private static final NATIVE_KEY_RDS_PS:I = 0x1

.field private static final NATIVE_KEY_RDS_PTY:I = 0x2

.field private static final NATIVE_KEY_RDS_RT:I = 0x4

.field private static final NATIVE_KEY_TITLE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BroadcastRadio.metadata"


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.RDS_PI"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.RDS_PS"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.RDS_PTY"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.RBDS_PTY"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.RDS_RT"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.TITLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.ARTIST"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.ALBUM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.GENRE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.ICON"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.ART"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.CLOCK"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.PROGRAM_NAME"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME_SHORT"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.DAB_SERVICE_NAME"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.DAB_SERVICE_NAME_SHORT"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.DAB_COMPONENT_NAME"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.DAB_COMPONENT_NAME_SHORT"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.hardware.radio.metadata.RDS_PI"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.hardware.radio.metadata.RDS_PS"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.hardware.radio.metadata.RDS_PTY"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.hardware.radio.metadata.RBDS_PTY"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.hardware.radio.metadata.RDS_RT"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.hardware.radio.metadata.TITLE"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.hardware.radio.metadata.ARTIST"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.hardware.radio.metadata.ALBUM"

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.hardware.radio.metadata.GENRE"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.hardware.radio.metadata.ICON"

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.hardware.radio.metadata.ART"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.hardware.radio.metadata.CLOCK"

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/hardware/radio/RadioMetadata$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioMetadata$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Landroid/hardware/radio/RadioMetadata$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioMetadata;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioMetadata$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$200(Landroid/hardware/radio/RadioMetadata;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300()Landroid/util/ArrayMap;
    .locals 1

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$400(Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/hardware/radio/RadioMetadata;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    return-void
.end method

.method public static getKeyFromNativeKey(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static putInt(Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 4

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " key cannot be used to put an int"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BroadcastRadio.metadata"

    const-string v3, "Failed to retrieve a key as Bitmap."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public getBitmapId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "android.hardware.radio.metadata.ICON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.hardware.radio.metadata.ART"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/hardware/radio/RadioMetadata;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getClock(Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Clock;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioMetadata$Clock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BroadcastRadio.metadata"

    const-string v3, "Failed to retrieve a key as Clock."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method putBitmapFromNative(I[B)I
    .locals 5

    invoke-static {p1}, Landroid/hardware/radio/RadioMetadata;->getKeyFromNativeKey(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    array-length v3, p2

    const/4 v4, 0x0

    invoke-static {p2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    return v2

    :cond_2
    :goto_1
    return v2
.end method

.method putClockFromNative(IJI)I
    .locals 3

    invoke-static {p1}, Landroid/hardware/radio/RadioMetadata;->getKeyFromNativeKey(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    new-instance v2, Landroid/hardware/radio/RadioMetadata$Clock;

    invoke-direct {v2, p2, p3, p4}, Landroid/hardware/radio/RadioMetadata$Clock;-><init>(JI)V

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    return v1
.end method

.method putIntFromNative(II)I
    .locals 3

    invoke-static {p1}, Landroid/hardware/radio/RadioMetadata;->getKeyFromNativeKey(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-static {v1, v0, p2}, Landroid/hardware/radio/RadioMetadata;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v1

    const/4 v2, -0x1

    return v2
.end method

.method putStringFromNative(ILjava/lang/String;)I
    .locals 3

    invoke-static {p1}, Landroid/hardware/radio/RadioMetadata;->getKeyFromNativeKey(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    return v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RadioMetadata["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "android.hardware.radio.metadata"

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move-object v5, v4

    const-string v6, "android.hardware.radio.metadata"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "android.hardware.radio.metadata"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

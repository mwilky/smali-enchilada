.class public final Landroid/security/keystore/recovery/WrappedApplicationKey;
.super Ljava/lang/Object;
.source "WrappedApplicationKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mEncryptedKeyMaterial:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/security/keystore/recovery/WrappedApplicationKey$1;

    invoke-direct {v0}, Landroid/security/keystore/recovery/WrappedApplicationKey$1;-><init>()V

    sput-object v0, Landroid/security/keystore/recovery/WrappedApplicationKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mAlias:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mEncryptedKeyMaterial:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/security/keystore/recovery/WrappedApplicationKey$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/security/keystore/recovery/WrappedApplicationKey;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mAlias:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mEncryptedKeyMaterial:[B

    return-void
.end method

.method static synthetic access$100(Landroid/security/keystore/recovery/WrappedApplicationKey;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Landroid/security/keystore/recovery/WrappedApplicationKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mAlias:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroid/security/keystore/recovery/WrappedApplicationKey;)[B
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mEncryptedKeyMaterial:[B

    return-object v0
.end method

.method static synthetic access$202(Landroid/security/keystore/recovery/WrappedApplicationKey;[B)[B
    .locals 0

    iput-object p1, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mEncryptedKeyMaterial:[B

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptedKeyMaterial()[B
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mEncryptedKeyMaterial:[B

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey;->mEncryptedKeyMaterial:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

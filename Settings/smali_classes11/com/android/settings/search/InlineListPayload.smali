.class public Lcom/android/settings/search/InlineListPayload;
.super Lcom/android/settings/search/InlinePayload;
.source "InlineListPayload.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/search/InlineListPayload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNumOptions:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/android/settings/search/InlineListPayload$1;

    invoke-direct {v0}, Lcom/android/settings/search/InlineListPayload$1;-><init>()V

    sput-object v0, Lcom/android/settings/search/InlineListPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 25
    invoke-direct {p0, p1}, Lcom/android/settings/search/InlinePayload;-><init>(Landroid/os/Parcel;)V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/InlineListPayload;->mNumOptions:I

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/settings/search/InlineListPayload$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/settings/search/InlineListPayload$1;

    .line 11
    invoke-direct {p0, p1}, Lcom/android/settings/search/InlineListPayload;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/content/Intent;ZII)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payloadType"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "isDeviceSupported"    # Z
    .param p5, "numOptions"    # I
    .param p6, "defaultValue"    # I

    .line 20
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/search/InlinePayload;-><init>(Ljava/lang/String;ILandroid/content/Intent;ZI)V

    .line 21
    iput p5, p0, Lcom/android/settings/search/InlineListPayload;->mNumOptions:I

    .line 22
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 47
    const/4 v0, 0x3

    return v0
.end method

.method protected standardizeInput(I)I
    .locals 3
    .param p1, "input"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 37
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/settings/search/InlineListPayload;->mNumOptions:I

    if-ge p1, v0, :cond_0

    .line 42
    return p1

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid argument for ListSelect. Expected between 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/search/InlineListPayload;->mNumOptions:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 31
    invoke-super {p0, p1, p2}, Lcom/android/settings/search/InlinePayload;->writeToParcel(Landroid/os/Parcel;I)V

    .line 32
    iget v0, p0, Lcom/android/settings/search/InlineListPayload;->mNumOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    return-void
.end method

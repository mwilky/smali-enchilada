.class public Lcom/android/settings/search/InlineSwitchPayload;
.super Lcom/android/settings/search/InlinePayload;
.source "InlineSwitchPayload.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/search/InlineSwitchPayload;",
            ">;"
        }
    .end annotation
.end field

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1


# instance fields
.field private mIsStandard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/android/settings/search/InlineSwitchPayload$1;

    invoke-direct {v0}, Lcom/android/settings/search/InlineSwitchPayload$1;-><init>()V

    sput-object v0, Lcom/android/settings/search/InlineSwitchPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/search/InlinePayload;-><init>(Landroid/os/Parcel;)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/search/InlineSwitchPayload;->mIsStandard:Z

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/settings/search/InlineSwitchPayload$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/settings/search/InlineSwitchPayload$1;

    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings/search/InlineSwitchPayload;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/content/Intent;ZI)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "source"    # I
    .param p3, "onValue"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "isDeviceSupported"    # Z
    .param p6, "defaultValue"    # I

    .line 49
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/search/InlinePayload;-><init>(Ljava/lang/String;ILandroid/content/Intent;ZI)V

    .line 51
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/search/InlineSwitchPayload;->mIsStandard:Z

    .line 52
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 61
    const/4 v0, 0x2

    return v0
.end method

.method public isStandard()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/android/settings/search/InlineSwitchPayload;->mIsStandard:Z

    return v0
.end method

.method protected standardizeInput(I)I
    .locals 3
    .param p1, "value"    # I

    .line 66
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid input for InlineSwitch. Expected: 1 or 0 but found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/search/InlineSwitchPayload;->mIsStandard:Z

    if-eqz v1, :cond_2

    .line 72
    nop

    .line 71
    move v0, p1

    goto :goto_1

    .line 73
    :cond_2
    sub-int/2addr v0, p1

    .line 71
    :goto_1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 78
    invoke-super {p0, p1, p2}, Lcom/android/settings/search/InlinePayload;->writeToParcel(Landroid/os/Parcel;I)V

    .line 79
    iget-boolean v0, p0, Lcom/android/settings/search/InlineSwitchPayload;->mIsStandard:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return-void
.end method

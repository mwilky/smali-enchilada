.class public Lcom/oneplus/settings/better/OPAppModel;
.super Ljava/lang/Object;
.source "OPAppModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private isGameAPP:Z

.field private isSelected:Z

.field private label:Ljava/lang/String;

.field private lockMode:I

.field private pkgName:Ljava/lang/String;

.field private shortCutId:Ljava/lang/String;

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    new-instance v0, Lcom/oneplus/settings/better/OPAppModel$1;

    invoke-direct {v0}, Lcom/oneplus/settings/better/OPAppModel$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/better/OPAppModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/better/OPAppModel;->readFromParcel(Landroid/os/Parcel;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "shortCutId"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "isSelected"    # Z

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppModel;->pkgName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/oneplus/settings/better/OPAppModel;->label:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/oneplus/settings/better/OPAppModel;->shortCutId:Ljava/lang/String;

    .line 22
    iput p4, p0, Lcom/oneplus/settings/better/OPAppModel;->uid:I

    .line 23
    iput-boolean p5, p0, Lcom/oneplus/settings/better/OPAppModel;->isSelected:Z

    .line 24
    return-void
.end method

.method public static getCreator()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/oneplus/settings/better/OPAppModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppModel;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppModel;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLockMode()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/oneplus/settings/better/OPAppModel;->lockMode:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppModel;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getShortCutId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppModel;->shortCutId:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/oneplus/settings/better/OPAppModel;->uid:I

    return v0
.end method

.method public isGameAPP()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPAppModel;->isSelected:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppModel;->pkgName:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppModel;->pkgName:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/OPAppModel;->uid:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/OPAppModel;->lockMode:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/settings/better/OPAppModel;->isSelected:Z

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP:Z

    .line 122
    return-void
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "appIcon"    # Landroid/graphics/drawable/Drawable;

    .line 71
    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppModel;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 72
    return-void
.end method

.method public setGameAPP(Z)V
    .locals 0
    .param p1, "isGameAPP"    # Z

    .line 31
    iput-boolean p1, p0, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP:Z

    .line 32
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppModel;->label:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setLockMode(I)V
    .locals 0
    .param p1, "lockMode"    # I

    .line 87
    iput p1, p0, Lcom/oneplus/settings/better/OPAppModel;->lockMode:I

    .line 88
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppModel;->pkgName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "isSelected"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/oneplus/settings/better/OPAppModel;->isSelected:Z

    .line 40
    return-void
.end method

.method public setShortCutId(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortCutId"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppModel;->shortCutId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 79
    iput p1, p0, Lcom/oneplus/settings/better/OPAppModel;->uid:I

    .line 80
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 107
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppModel;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppModel;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lcom/oneplus/settings/better/OPAppModel;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Lcom/oneplus/settings/better/OPAppModel;->lockMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPAppModel;->isSelected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    return-void
.end method

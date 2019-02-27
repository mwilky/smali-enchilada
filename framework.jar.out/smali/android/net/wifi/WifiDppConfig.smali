.class public Landroid/net/wifi/WifiDppConfig;
.super Ljava/lang/Object;
.source "WifiDppConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiDppConfig$DppResult;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiDppConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DPP_INVALID_CONFIG_ID:I = -0x1

.field public static final DPP_ROLE_CONFIGURATOR:I = 0x0

.field public static final DPP_ROLE_ENROLLEE:I = 0x1

.field public static final DPP_TYPE_NAN_BOOTSTRAP:I = 0x1

.field public static final DPP_TYPE_QR_CODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiDppConfig"


# instance fields
.field public bootstrap_type:I

.field public chan_list:Ljava/lang/String;

.field public conf_id:I

.field public curve:Ljava/lang/String;

.field public dpp_role:I

.field public expiry:I

.field public info:Ljava/lang/String;

.field public isAp:I

.field public isDpp:I

.field public key:Ljava/lang/String;

.field private mEventResult:Landroid/net/wifi/WifiDppConfig$DppResult;

.field public mac_addr:Ljava/lang/String;

.field public own_bootstrap_id:I

.field public passphrase:Ljava/lang/String;

.field public peer_bootstrap_id:I

.field public ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/WifiDppConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiDppConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiDppConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/wifi/WifiDppConfig$DppResult;

    invoke-direct {v0}, Landroid/net/wifi/WifiDppConfig$DppResult;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiDppConfig;->mEventResult:Landroid/net/wifi/WifiDppConfig$DppResult;

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiDppConfig;->peer_bootstrap_id:I

    iput v0, p0, Landroid/net/wifi/WifiDppConfig;->own_bootstrap_id:I

    iput v0, p0, Landroid/net/wifi/WifiDppConfig;->dpp_role:I

    iput v0, p0, Landroid/net/wifi/WifiDppConfig;->isAp:I

    iput v0, p0, Landroid/net/wifi/WifiDppConfig;->isDpp:I

    iput v0, p0, Landroid/net/wifi/WifiDppConfig;->conf_id:I

    iput v0, p0, Landroid/net/wifi/WifiDppConfig;->bootstrap_type:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiDppConfig;->expiry:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiDppConfig;->ssid:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiDppConfig;->passphrase:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiDppConfig;->chan_list:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiDppConfig;->mac_addr:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiDppConfig;->info:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiDppConfig;->curve:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiDppConfig;->key:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiDppConfig;)Landroid/net/wifi/WifiDppConfig$DppResult;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiDppConfig;->mEventResult:Landroid/net/wifi/WifiDppConfig$DppResult;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDppResult()Landroid/net/wifi/WifiDppConfig$DppResult;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiDppConfig;->mEventResult:Landroid/net/wifi/WifiDppConfig$DppResult;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    return-void
.end method

.method public setDppResult(Landroid/net/wifi/WifiDppConfig$DppResult;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiDppConfig;->mEventResult:Landroid/net/wifi/WifiDppConfig$DppResult;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 0

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiDppConfig;->peer_bootstrap_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiDppConfig;->own_bootstrap_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiDppConfig;->dpp_role:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiDppConfig;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiDppConfig;->passphrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/WifiDppConfig;->isAp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiDppConfig;->isDpp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiDppConfig;->conf_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiDppConfig;->bootstrap_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiDppConfig;->chan_list:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiDppConfig;->mac_addr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiDppConfig;->info:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiDppConfig;->curve:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/WifiDppConfig;->expiry:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiDppConfig;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiDppConfig;->mEventResult:Landroid/net/wifi/WifiDppConfig$DppResult;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiDppConfig$DppResult;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

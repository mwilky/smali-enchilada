.class public abstract Landroid/secrecy/ISecrecyService$Stub;
.super Landroid/os/Binder;
.source "ISecrecyService.java"

# interfaces
.implements Landroid/secrecy/ISecrecyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/secrecy/ISecrecyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/secrecy/ISecrecyService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.secrecy.ISecrecyService"

.field static final TRANSACTION_getSecrecyKey:I = 0x2

.field static final TRANSACTION_getSecrecyState:I = 0x1

.field static final TRANSACTION_isInEncryptedAppList:I = 0x5

.field static final TRANSACTION_isSecrecySupport:I = 0x4

.field static final TRANSACTION_registerSecrecyServiceReceiver:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.secrecy.ISecrecyService"

    invoke-virtual {p0, p0, v0}, Landroid/secrecy/ISecrecyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/secrecy/ISecrecyService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "android.secrecy.ISecrecyService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/secrecy/ISecrecyService;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Landroid/secrecy/ISecrecyService;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Landroid/secrecy/ISecrecyService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/secrecy/ISecrecyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const-string v0, "android.secrecy.ISecrecyService"

    .line 43
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 97
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    sget-object v1, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .local v1, "_arg0":Landroid/content/pm/ActivityInfo;
    goto :goto_0

    .line 103
    .end local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    :cond_0
    const/4 v1, 0x0

    .line 106
    .restart local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 110
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 111
    .local v5, "_arg3":I
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/secrecy/ISecrecyService$Stub;->isInEncryptedAppList(Landroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    move-result v6

    .line 112
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return v2

    .line 89
    .end local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/secrecy/ISecrecyService$Stub;->isSecrecySupport()Z

    move-result v1

    .line 91
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return v2

    .line 79
    .end local v1    # "_result":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/secrecy/ISecrecyServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/secrecy/ISecrecyServiceReceiver;

    move-result-object v1

    .line 82
    .local v1, "_arg0":Landroid/secrecy/ISecrecyServiceReceiver;
    invoke-virtual {p0, v1}, Landroid/secrecy/ISecrecyService$Stub;->registerSecrecyServiceReceiver(Landroid/secrecy/ISecrecyServiceReceiver;)Z

    move-result v3

    .line 83
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return v2

    .line 62
    .end local v1    # "_arg0":Landroid/secrecy/ISecrecyServiceReceiver;
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .local v1, "_arg0_length":I
    if-gez v1, :cond_1

    .line 66
    const/4 v3, 0x0

    .local v3, "_arg0":[B
    goto :goto_1

    .line 69
    .end local v3    # "_arg0":[B
    :cond_1
    new-array v3, v1, [B

    .line 71
    .restart local v3    # "_arg0":[B
    :goto_1
    invoke-virtual {p0, v3}, Landroid/secrecy/ISecrecyService$Stub;->getSecrecyKey([B)Z

    move-result v4

    .line 72
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 75
    return v2

    .line 52
    .end local v1    # "_arg0_length":I
    .end local v3    # "_arg0":[B
    .end local v4    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/secrecy/ISecrecyService$Stub;->getSecrecyState(I)Z

    move-result v3

    .line 56
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    return v2

    .line 47
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

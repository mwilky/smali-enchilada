.class public abstract Lcom/oneplus/os/IOIMCService$Stub;
.super Landroid/os/Binder;
.source "IOIMCService.java"

# interfaces
.implements Lcom/oneplus/os/IOIMCService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/os/IOIMCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/os/IOIMCService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oneplus.os.IOIMCService"

.field static final TRANSACTION_addFuncRule:I = 0x1

.field static final TRANSACTION_addFuncRuleGlobal:I = 0x3

.field static final TRANSACTION_getRemoteFuncStatus:I = 0x9

.field static final TRANSACTION_notifyModeChange:I = 0x6

.field static final TRANSACTION_registerRemoteAction:I = 0x7

.field static final TRANSACTION_removeFuncRule:I = 0x2

.field static final TRANSACTION_removeFuncRuleGlobal:I = 0x4

.field static final TRANSACTION_runRuleGlobal:I = 0x5

.field static final TRANSACTION_unRegisterRemoteAction:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.oneplus.os.IOIMCService"

    invoke-virtual {p0, p0, v0}, Lcom/oneplus/os/IOIMCService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/os/IOIMCService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "com.oneplus.os.IOIMCService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/os/IOIMCService;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lcom/oneplus/os/IOIMCService;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lcom/oneplus/os/IOIMCService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oneplus/os/IOIMCService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const-string v0, "com.oneplus.os.IOIMCService"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 156
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/oneplus/os/IOIMCService$Stub;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v3

    .line 160
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    return v2

    .line 147
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 150
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/oneplus/os/IOIMCService$Stub;->unRegisterRemoteAction(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    return v2

    .line 136
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 140
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/os/IOIMCRemoteAction$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/os/IOIMCRemoteAction;

    move-result-object v3

    .line 141
    .local v3, "_arg1":Lcom/oneplus/os/IOIMCRemoteAction;
    invoke-virtual {p0, v1, v3}, Lcom/oneplus/os/IOIMCService$Stub;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    return v2

    .line 123
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/oneplus/os/IOIMCRemoteAction;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 129
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 130
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/oneplus/os/IOIMCService$Stub;->notifyModeChange(Ljava/lang/String;II)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    return v2

    .line 109
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/oimc/OIMCRule;

    .local v1, "_arg0":Lcom/oneplus/oimc/OIMCRule;
    goto :goto_0

    .line 115
    .end local v1    # "_arg0":Lcom/oneplus/oimc/OIMCRule;
    :cond_0
    nop

    .line 117
    .restart local v1    # "_arg0":Lcom/oneplus/oimc/OIMCRule;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/oneplus/os/IOIMCService$Stub;->runRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    return v2

    .line 95
    .end local v1    # "_arg0":Lcom/oneplus/oimc/OIMCRule;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/oimc/OIMCRule;

    .restart local v1    # "_arg0":Lcom/oneplus/oimc/OIMCRule;
    goto :goto_1

    .line 101
    .end local v1    # "_arg0":Lcom/oneplus/oimc/OIMCRule;
    :cond_1
    nop

    .line 103
    .restart local v1    # "_arg0":Lcom/oneplus/oimc/OIMCRule;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/oneplus/os/IOIMCService$Stub;->removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    return v2

    .line 81
    .end local v1    # "_arg0":Lcom/oneplus/oimc/OIMCRule;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/oimc/OIMCRule;

    .restart local v1    # "_arg0":Lcom/oneplus/oimc/OIMCRule;
    goto :goto_2

    .line 87
    .end local v1    # "_arg0":Lcom/oneplus/oimc/OIMCRule;
    :cond_2
    nop

    .line 89
    .restart local v1    # "_arg0":Lcom/oneplus/oimc/OIMCRule;
    :goto_2
    invoke-virtual {p0, v1}, Lcom/oneplus/os/IOIMCService$Stub;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    return v2

    .line 65
    .end local v1    # "_arg0":Lcom/oneplus/oimc/OIMCRule;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 68
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/oimc/OIMCRule;

    .restart local v1    # "_arg0":Lcom/oneplus/oimc/OIMCRule;
    goto :goto_3

    .line 71
    .end local v1    # "_arg0":Lcom/oneplus/oimc/OIMCRule;
    :cond_3
    nop

    .line 74
    .restart local v1    # "_arg0":Lcom/oneplus/oimc/OIMCRule;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 75
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/oneplus/os/IOIMCService$Stub;->removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    return v2

    .line 49
    .end local v1    # "_arg0":Lcom/oneplus/oimc/OIMCRule;
    .end local v3    # "_arg1":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 52
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/oimc/OIMCRule;

    .restart local v1    # "_arg0":Lcom/oneplus/oimc/OIMCRule;
    goto :goto_4

    .line 55
    .end local v1    # "_arg0":Lcom/oneplus/oimc/OIMCRule;
    :cond_4
    nop

    .line 58
    .restart local v1    # "_arg0":Lcom/oneplus/oimc/OIMCRule;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 59
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/oneplus/os/IOIMCService$Stub;->addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    return v2

    .line 44
    .end local v1    # "_arg0":Lcom/oneplus/oimc/OIMCRule;
    .end local v3    # "_arg1":I
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

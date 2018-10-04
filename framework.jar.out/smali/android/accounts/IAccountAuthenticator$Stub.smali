.class public abstract Landroid/accounts/IAccountAuthenticator$Stub;
.super Landroid/os/Binder;
.source "IAccountAuthenticator.java"

# interfaces
.implements Landroid/accounts/IAccountAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/IAccountAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/IAccountAuthenticator$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.accounts.IAccountAuthenticator"

.field static final TRANSACTION_addAccount:I = 0x1

.field static final TRANSACTION_addAccountFromCredentials:I = 0xa

.field static final TRANSACTION_confirmCredentials:I = 0x2

.field static final TRANSACTION_editProperties:I = 0x6

.field static final TRANSACTION_finishSession:I = 0xd

.field static final TRANSACTION_getAccountCredentialsForCloning:I = 0x9

.field static final TRANSACTION_getAccountRemovalAllowed:I = 0x8

.field static final TRANSACTION_getAuthToken:I = 0x3

.field static final TRANSACTION_getAuthTokenLabel:I = 0x4

.field static final TRANSACTION_hasFeatures:I = 0x7

.field static final TRANSACTION_isCredentialsUpdateSuggested:I = 0xe

.field static final TRANSACTION_startAddAccountSession:I = 0xb

.field static final TRANSACTION_startUpdateCredentialsSession:I = 0xc

.field static final TRANSACTION_updateCredentials:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p0, p0, v0}, Landroid/accounts/IAccountAuthenticator$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/accounts/IAccountAuthenticator;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/accounts/IAccountAuthenticator;

    return-object v1

    :cond_1
    new-instance v1, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "android.accounts.IAccountAuthenticator"

    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v7, v0, :cond_11

    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v0, v2}, Landroid/accounts/IAccountAuthenticator$Stub;->isCredentialsUpdateSuggested(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    return v10

    :pswitch_1
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {v6, v1, v2, v0}, Landroid/accounts/IAccountAuthenticator$Stub;->finishSession(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Landroid/os/Bundle;)V

    return v10

    :pswitch_2
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_3

    :cond_3
    nop

    :goto_3
    invoke-virtual {v6, v1, v2, v3, v0}, Landroid/accounts/IAccountAuthenticator$Stub;->startUpdateCredentialsSession(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    return v10

    :pswitch_3
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_4
    move-object v5, v0

    goto :goto_5

    :cond_4
    goto :goto_4

    :goto_5
    move-object v0, v6

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/IAccountAuthenticator$Stub;->startAddAccountSession(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    return v10

    :pswitch_4
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    goto :goto_6

    :cond_5
    move-object v2, v0

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_7

    :cond_6
    nop

    :goto_7
    invoke-virtual {v6, v1, v2, v0}, Landroid/accounts/IAccountAuthenticator$Stub;->addAccountFromCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V

    return v10

    :pswitch_5
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    goto :goto_8

    :cond_7
    nop

    :goto_8
    invoke-virtual {v6, v1, v0}, Landroid/accounts/IAccountAuthenticator$Stub;->getAccountCredentialsForCloning(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    return v10

    :pswitch_6
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    goto :goto_9

    :cond_8
    nop

    :goto_9
    invoke-virtual {v6, v1, v0}, Landroid/accounts/IAccountAuthenticator$Stub;->getAccountRemovalAllowed(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    return v10

    :pswitch_7
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    goto :goto_a

    :cond_9
    nop

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v0, v2}, Landroid/accounts/IAccountAuthenticator$Stub;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    return v10

    :pswitch_8
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/accounts/IAccountAuthenticator$Stub;->editProperties(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    return v10

    :pswitch_9
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    goto :goto_b

    :cond_a
    move-object v2, v0

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_c

    :cond_b
    nop

    :goto_c
    invoke-virtual {v6, v1, v2, v3, v0}, Landroid/accounts/IAccountAuthenticator$Stub;->updateCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    return v10

    :pswitch_a
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/accounts/IAccountAuthenticator$Stub;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    return v10

    :pswitch_b
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    goto :goto_d

    :cond_c
    move-object v2, v0

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_e

    :cond_d
    nop

    :goto_e
    invoke-virtual {v6, v1, v2, v3, v0}, Landroid/accounts/IAccountAuthenticator$Stub;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    return v10

    :pswitch_c
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    goto :goto_f

    :cond_e
    move-object v2, v0

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_10

    :cond_f
    nop

    :goto_10
    invoke-virtual {v6, v1, v2, v0}, Landroid/accounts/IAccountAuthenticator$Stub;->confirmCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V

    return v10

    :pswitch_d
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_11
    move-object v5, v0

    goto :goto_12

    :cond_10
    goto :goto_11

    :goto_12
    move-object v0, v6

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/IAccountAuthenticator$Stub;->addAccount(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    return v10

    :cond_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

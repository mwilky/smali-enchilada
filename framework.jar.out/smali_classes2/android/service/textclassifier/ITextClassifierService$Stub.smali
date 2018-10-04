.class public abstract Landroid/service/textclassifier/ITextClassifierService$Stub;
.super Landroid/os/Binder;
.source "ITextClassifierService.java"

# interfaces
.implements Landroid/service/textclassifier/ITextClassifierService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textclassifier/ITextClassifierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textclassifier/ITextClassifierService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.textclassifier.ITextClassifierService"

.field static final TRANSACTION_onClassifyText:I = 0x2

.field static final TRANSACTION_onCreateTextClassificationSession:I = 0x5

.field static final TRANSACTION_onDestroyTextClassificationSession:I = 0x6

.field static final TRANSACTION_onGenerateLinks:I = 0x3

.field static final TRANSACTION_onSelectionEvent:I = 0x4

.field static final TRANSACTION_onSuggestSelection:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.textclassifier.ITextClassifierService"

    invoke-virtual {p0, p0, v0}, Landroid/service/textclassifier/ITextClassifierService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.service.textclassifier.ITextClassifierService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/textclassifier/ITextClassifierService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/service/textclassifier/ITextClassifierService;

    return-object v1

    :cond_1
    new-instance v1, Landroid/service/textclassifier/ITextClassifierService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/textclassifier/ITextClassifierService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.service.textclassifier.ITextClassifierService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_b

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassificationSessionId;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {p0, v1}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/view/textclassifier/TextClassificationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextClassificationContext;

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v1, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassificationSessionId;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    invoke-virtual {p0, v3, v1}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextClassificationSessionId;

    goto :goto_3

    :cond_3
    move-object v3, v1

    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    sget-object v1, Landroid/view/textclassifier/SelectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/SelectionEvent;

    goto :goto_4

    :cond_4
    nop

    :goto_4
    invoke-virtual {p0, v3, v1}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextClassificationSessionId;

    goto :goto_5

    :cond_5
    move-object v3, v1

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    sget-object v1, Landroid/view/textclassifier/TextLinks$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextLinks$Request;

    goto :goto_6

    :cond_6
    nop

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/textclassifier/ITextLinksCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextLinksCallback;

    move-result-object v4

    invoke-virtual {p0, v3, v1, v4}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextLinksCallback;)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextClassificationSessionId;

    goto :goto_7

    :cond_7
    move-object v3, v1

    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    sget-object v1, Landroid/view/textclassifier/TextClassification$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassification$Request;

    goto :goto_8

    :cond_8
    nop

    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/textclassifier/ITextClassificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassificationCallback;

    move-result-object v4

    invoke-virtual {p0, v3, v1, v4}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassificationCallback;)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextClassificationSessionId;

    goto :goto_9

    :cond_9
    move-object v3, v1

    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    sget-object v1, Landroid/view/textclassifier/TextSelection$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextSelection$Request;

    goto :goto_a

    :cond_a
    nop

    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/textclassifier/ITextSelectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextSelectionCallback;

    move-result-object v4

    invoke-virtual {p0, v3, v1, v4}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextSelectionCallback;)V

    return v2

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

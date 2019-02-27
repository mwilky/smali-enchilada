.class Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallerInfoAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;
    }
.end annotation


# instance fields
.field private mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

.field private mContext:Landroid/content/Context;

.field private mPendingListenerCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-static {p2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mPendingListenerCallbacks:Ljava/util/List;

    iput-object p2, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Lcom/android/internal/telephony/CallerInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    return-object p1
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 17

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p3

    const-string v0, "CallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### onQueryComplete() #####   query complete for token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v11, p2

    check-cast v11, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    if-nez v11, :cond_1

    const-string v0, "CallerInfoAsyncQuery"

    const-string v1, "Cookie is null, ignoring onQueryComplete() request."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    iget v0, v11, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v12, 0x3

    if-ne v0, v12, :cond_4

    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mPendingListenerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mPendingListenerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->access$200(Lcom/android/internal/telephony/CallerInfoAsyncQuery;)V

    if-eqz v10, :cond_3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :cond_4
    iget v0, v11, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v13, 0x0

    const/4 v14, 0x6

    if-ne v0, v14, :cond_6

    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_5

    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v11, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->geoDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    :cond_5
    new-instance v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    move-object v7, v0

    iput v12, v7, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    move-object v0, v8

    move v1, v9

    move-object v2, v7

    move-object/from16 v16, v7

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v0, :cond_d

    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_c

    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    if-eqz v0, :cond_c

    iget v0, v11, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iget-object v1, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallerInfo;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1

    :cond_7
    iget v0, v11, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iget v1, v11, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->subId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMail(I)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1

    :cond_8
    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    iget-object v1, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    invoke-static {v0, v1, v10}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    iget-object v1, v11, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v7

    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eq v7, v0, :cond_9

    iput-object v7, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    :cond_9
    iget-object v0, v11, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v11, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/telephony/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    :cond_a
    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput v14, v11, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    move-object v0, v8

    move v1, v9

    move-object v2, v11

    move-object v13, v7

    move-object v7, v12

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    move-object v13, v0

    iput v12, v13, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move v1, v9

    move-object v2, v13

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    new-instance v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri, or CallerInfoAsyncQuery already released."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_2
    iget-object v0, v11, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_e

    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mPendingListenerCallbacks:Ljava/util/List;

    new-instance v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;

    invoke-direct {v1, v8, v11, v9}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    const-string v0, "CallerInfoAsyncQuery"

    const-string v1, "There is no listener to notify for this query."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-eqz v10, :cond_f

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_f
    return-void
.end method

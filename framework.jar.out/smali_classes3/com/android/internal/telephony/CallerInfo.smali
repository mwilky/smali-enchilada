.class public Lcom/android/internal/telephony/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallerInfo"

.field public static final USER_TYPE_CURRENT:J = 0x0L

.field public static final USER_TYPE_WORK:J = 0x1L

.field private static final VDBG:Z


# instance fields
.field public cachedPhoto:Landroid/graphics/drawable/Drawable;

.field public cachedPhotoIcon:Landroid/graphics/Bitmap;

.field public cnapName:Ljava/lang/String;

.field public contactDisplayPhotoUri:Landroid/net/Uri;

.field public contactExists:Z

.field public contactIdOrZero:J

.field public contactRefUri:Landroid/net/Uri;

.field public contactRingtoneUri:Landroid/net/Uri;

.field public geoDescription:Ljava/lang/String;

.field public isCachedPhotoCurrent:Z

.field public lookupKey:Ljava/lang/String;

.field private mIsEmergency:Z

.field private mIsVoiceMail:Z

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public needUpdate:Z

.field public normalizedNumber:Ljava/lang/String;

.field public numberLabel:Ljava/lang/String;

.field public numberPresentation:I

.field public numberType:I

.field public phoneLabel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photoResource:I

.field public shouldSendToVoicemail:Z

.field public userType:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "CallerInfo"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/CallerInfo;->userType:J

    return-void
.end method

.method static doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3

    iget-boolean v0, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;
    .locals 8

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CallerInfo"

    const-string v3, "Error getting caller info."

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;
    .locals 11

    const/16 v0, 0xc

    invoke-static {v0, p1}, Landroid/util/SeempLog;->record_uri(ILandroid/net/Uri;)I

    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iput v1, v0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/internal/telephony/CallerInfo;->userType:J

    sget-boolean v5, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v5, :cond_0

    const-string v5, "CallerInfo"

    const-string v6, "getCallerInfo() based on cursor..."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_10

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "display_name"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    :cond_1
    const-string v7, "number"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    :cond_2
    const-string v7, "normalized_number"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_3

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    :cond_3
    const-string v7, "label"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_4

    const-string v7, "type"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v6, :cond_4

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    iget v8, v0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iget-object v9, v0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {p0, v8, v9}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    :cond_4
    invoke-static {p1, p2}, Lcom/android/internal/telephony/CallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v5

    if-eq v5, v6, :cond_7

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v3, v7, v3

    if-eqz v3, :cond_5

    invoke-static {v7, v8}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v3

    if-nez v3, :cond_5

    iput-wide v7, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_5

    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==> got info.contactIdOrZero: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v7, v8}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v3

    if-eqz v3, :cond_6

    const-wide/16 v3, 0x1

    iput-wide v3, v0, Lcom/android/internal/telephony/CallerInfo;->userType:J

    :cond_6
    goto :goto_0

    :cond_7
    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find contact_id column for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v3, "lookup"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_8

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->lookupKey:Ljava/lang/String;

    :cond_8
    const-string v4, "photo_uri"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    goto :goto_1

    :cond_9
    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    :goto_1
    const-string v4, "photo_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_a

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    :cond_a
    const-string v4, "photo_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_b

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    :cond_b
    const-string v4, "custom_ringtone"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_d

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_2

    :cond_c
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_2

    :cond_d
    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    :goto_2
    const-string v2, "send_to_voicemail"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v6, :cond_e

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v3, :cond_e

    move v4, v3

    goto :goto_3

    :cond_e
    move v4, v1

    :goto_3
    iput-boolean v4, v0, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    iput-boolean v3, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    :cond_f
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    const/4 p2, 0x0

    :cond_10
    iput-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .locals 2

    sget-boolean v0, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallerInfo"

    const-string v1, "getCallerInfo() based on number..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallerInfo;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {p2, p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMail()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    :cond_3
    return-object v1
.end method

.method private static getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .locals 6

    sget-boolean v0, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallerInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getColumnIndexForPersonId: contactRef URI = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "content://com.android.contacts/data/phones"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v2, :cond_1

    const-string v2, "CallerInfo"

    const-string v3, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "contact_id"

    goto :goto_0

    :cond_2
    const-string v2, "content://com.android.contacts/data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v2, :cond_3

    const-string v2, "CallerInfo"

    const-string v3, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v1, "contact_id"

    goto :goto_0

    :cond_4
    const-string v2, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v2, :cond_5

    const-string v2, "CallerInfo"

    const-string v3, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v1, "_id"

    goto :goto_0

    :cond_6
    const-string v2, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected prefix for contactRef \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v1, :cond_7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_7
    const/4 v2, -0x1

    :goto_1
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_8

    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> Using column \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' (columnIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") for person_id lookup..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v2
.end method

.method protected static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v3, "CallerInfo"

    const-string v4, "CountryDetector.detectCountry() returned null."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method public static getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    sget-boolean v0, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallerInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGeoDescription(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p0, v3}, Lcom/android/internal/telephony/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    :try_start_0
    sget-boolean v6, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v6, :cond_2

    const-string v6, "CallerInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parsing \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' for countryIso \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0, p1, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v6

    move-object v5, v6

    sget-boolean v6, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v6, :cond_3

    const-string v6, "CallerInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- parsed number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "CallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getGeoDescription: NumberParseException for incoming number \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "CallerInfo"

    invoke-static {v9, p1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v5, :cond_5

    invoke-virtual {v2, v5, v3}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v6, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v6, :cond_4

    const-string v6, "CallerInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- got description: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v1

    :cond_5
    return-object v1
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public isEmergencyNumber()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    return v0
.end method

.method public isVoiceMailNumber()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    return v0
.end method

.method markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;
    .locals 1

    const v0, 0x10401e8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    const v0, 0x108060c

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    return-object p0
.end method

.method markAsVoiceMail()Lcom/android/internal/telephony/CallerInfo;
    .locals 2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMail(I)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    return-object v1
.end method

.method markAsVoiceMail(I)Lcom/android/internal/telephony/CallerInfo;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CallerInfo"

    const-string v2, "Cannot access VoiceMail."

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " { "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "null"

    goto :goto_0

    :cond_0
    const-string v3, "non-null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", phoneNumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, "null"

    goto :goto_1

    :cond_1
    const-string v3, "non-null"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    return-void
.end method

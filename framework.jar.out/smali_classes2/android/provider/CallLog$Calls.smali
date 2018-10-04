.class public Landroid/provider/CallLog$Calls;
.super Ljava/lang/Object;
.source "CallLog.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation


# static fields
.field public static final ADD_FOR_ALL_USERS:Ljava/lang/String; = "add_for_all_users"

.field public static final ALLOW_VOICEMAILS_PARAM_KEY:Ljava/lang/String; = "allow_voicemails"

.field public static final ANSWERED_EXTERNALLY_TYPE:I = 0x7

.field public static final BLOCKED_TYPE:I = 0x6

.field public static final CACHED_FORMATTED_NUMBER:Ljava/lang/String; = "formatted_number"

.field public static final CACHED_LOOKUP_URI:Ljava/lang/String; = "lookup_uri"

.field public static final CACHED_MATCHED_NUMBER:Ljava/lang/String; = "matched_number"

.field public static final CACHED_NAME:Ljava/lang/String; = "name"

.field public static final CACHED_NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final CACHED_NUMBER_LABEL:Ljava/lang/String; = "numberlabel"

.field public static final CACHED_NUMBER_TYPE:Ljava/lang/String; = "numbertype"

.field public static final CACHED_PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final CACHED_PHOTO_URI:Ljava/lang/String; = "photo_uri"

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/calls"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/calls"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

.field public static final COUNTRY_ISO:Ljava/lang/String; = "countryiso"

.field public static final DATA_USAGE:Ljava/lang/String; = "data_usage"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final EXTRA_CALL_TYPE_FILTER:Ljava/lang/String; = "android.provider.extra.CALL_TYPE_FILTER"

.field public static final FEATURES:Ljava/lang/String; = "features"

.field public static final FEATURES_ASSISTED_DIALING_USED:I = 0x10

.field public static final FEATURES_HD_CALL:I = 0x4

.field public static final FEATURES_PULLED_EXTERNALLY:I = 0x2

.field public static final FEATURES_RTT:I = 0x20

.field public static final FEATURES_VIDEO:I = 0x1

.field public static final FEATURES_WIFI:I = 0x8

.field public static final GEOCODED_LOCATION:Ljava/lang/String; = "geocoded_location"

.field public static final INCOMING_TYPE:I = 0x1

.field public static final IS_READ:Ljava/lang/String; = "is_read"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "last_modified"

.field public static final LIMIT_PARAM_KEY:Ljava/lang/String; = "limit"

.field private static final MIN_DURATION_FOR_NORMALIZED_NUMBER_UPDATE_MS:I = 0x2710

.field public static final MISSED_TYPE:I = 0x3

.field public static final NEW:Ljava/lang/String; = "new"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final NUMBER_PRESENTATION:Ljava/lang/String; = "presentation"

.field public static final OFFSET_PARAM_KEY:Ljava/lang/String; = "offset"

.field public static final OUTGOING_TYPE:I = 0x2

.field public static final PHONE_ACCOUNT_ADDRESS:Ljava/lang/String; = "phone_account_address"

.field public static final PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "subscription_component_name"

.field public static final PHONE_ACCOUNT_HIDDEN:Ljava/lang/String; = "phone_account_hidden"

.field public static final PHONE_ACCOUNT_ID:Ljava/lang/String; = "subscription_id"

.field public static final POST_DIAL_DIGITS:Ljava/lang/String; = "post_dial_digits"

.field public static final PRESENTATION_ALLOWED:I = 0x1

.field public static final PRESENTATION_PAYPHONE:I = 0x4

.field public static final PRESENTATION_RESTRICTED:I = 0x2

.field public static final PRESENTATION_UNKNOWN:I = 0x3

.field public static final REJECTED_TYPE:I = 0x5

.field public static final SHADOW_CONTENT_URI:Landroid/net/Uri;

.field public static final SUB_ID:Ljava/lang/String; = "sub_id"

.field public static final TRANSCRIPTION:Ljava/lang/String; = "transcription"

.field public static final TRANSCRIPTION_STATE:Ljava/lang/String; = "transcription_state"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VIA_NUMBER:Ljava/lang/String; = "via_number"

.field public static final VOICEMAIL_TYPE:I = 0x4

.field public static final VOICEMAIL_URI:Ljava/lang/String; = "voicemail_uri"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://call_log_shadow/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://call_log/calls/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_FILTER_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "allow_voicemails"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;)Landroid/net/Uri;
    .locals 16

    const-string v3, ""

    const-string v4, ""

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-static/range {v0 .. v15}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;)Landroid/net/Uri;
    .locals 16

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    invoke-static/range {v0 .. v15}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;Z)Landroid/net/Uri;
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p8

    move/from16 v6, p11

    move-object/from16 v7, p12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v8, 0x1

    const/4 v15, 0x0

    move-object v9, v15

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v0

    nop

    :goto_0
    move-object v13, v9

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    if-eqz v13, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v13, v5}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v12, v0

    const/4 v0, 0x3

    const/4 v11, 0x2

    if-ne v3, v11, :cond_2

    const/4 v8, 0x2

    :cond_1
    :goto_2
    move v10, v8

    goto :goto_3

    :cond_2
    const/4 v9, 0x4

    if-ne v3, v9, :cond_3

    const/4 v8, 0x4

    goto :goto_2

    :cond_3
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    if-ne v3, v0, :cond_1

    :cond_4
    const/4 v8, 0x3

    goto :goto_2

    :goto_3
    const/4 v9, 0x1

    if-eq v10, v9, :cond_6

    const-string v8, ""

    if-eqz v1, :cond_5

    const-string v15, ""

    iput-object v15, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    :cond_5
    move-object v15, v8

    goto :goto_4

    :cond_6
    move-object/from16 v15, p2

    :goto_4
    const/4 v8, 0x0

    const/16 v17, 0x0

    if-eqz v5, :cond_7

    invoke-virtual/range {p8 .. p8}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p8 .. p8}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v17

    :cond_7
    move-object v11, v8

    new-instance v8, Landroid/content/ContentValues;

    const/4 v0, 0x6

    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-wide/16 v20, 0x0

    if-eqz v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "oneplus_emergency"

    move-object/from16 v17, v0

    :cond_8
    const-string/jumbo v0, "name"

    iget-object v9, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_9

    const-string/jumbo v0, "photo_uri"

    iget-object v9, v1, Lcom/android/internal/telephony/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "photo_id"

    iget v9, v1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->lookupKey:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-wide v2, v1, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    cmp-long v0, v2, v20

    if-lez v0, :cond_a

    iget-wide v2, v1, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->lookupKey:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string/jumbo v2, "lookup_uri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object/from16 v2, v17

    const-string/jumbo v0, "number"

    invoke-virtual {v8, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "post_dial_digits"

    move-object/from16 v3, p3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "via_number"

    move-object/from16 v9, p4

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "presentation"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "type"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "features"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "date"

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "duration"

    move/from16 v22, v10

    int-to-long v9, v6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v7, :cond_b

    const-string v0, "data_usage"

    invoke-virtual {v8, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_b
    const-string/jumbo v0, "subscription_component_name"

    invoke-virtual {v8, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "subscription_id"

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "phone_account_address"

    invoke-virtual {v8, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "new"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "add_for_all_users"

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x3

    if-ne v4, v0, :cond_c

    const-string v0, "is_read"

    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_c
    if-eqz v1, :cond_12

    iget-wide v9, v1, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    cmp-long v3, v9, v20

    if-lez v3, :cond_12

    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    sget-object v9, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v10, "_id"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v17, "contact_id =? AND data4 =?"

    move-object/from16 v23, v2

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    move-object/from16 v24, v8

    iget-wide v7, v1, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v2, v8

    const/4 v7, 0x1

    aput-object v3, v2, v7

    const/16 v18, 0x0

    move-object/from16 v7, v24

    move-object v8, v14

    const/4 v0, 0x1

    move/from16 v19, v22

    move-object/from16 v20, v11

    move-object/from16 v11, v17

    move-object/from16 v17, v12

    move-object v12, v2

    move-object v2, v13

    move-object/from16 v13, v18

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    nop

    move-object/from16 v25, v2

    goto :goto_6

    :cond_d
    move-object/from16 v23, v2

    move-object v7, v8

    move-object/from16 v20, v11

    move-object/from16 v17, v12

    move-object v2, v13

    move/from16 v19, v22

    const/4 v0, 0x1

    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_5

    :cond_e
    move-object v3, v15

    :goto_5
    sget-object v8, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string v8, "_id"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "contact_id =?"

    new-array v12, v0, [Ljava/lang/String;

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    iget-wide v2, v1, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v12, v3

    const/4 v13, 0x0

    move-object v8, v14

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    :goto_6
    move-object v2, v3

    if-eqz v2, :cond_11

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_f

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/provider/CallLog$Calls;->updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V

    const/16 v9, 0x2710

    if-lt v6, v9, :cond_10

    const/4 v9, 0x2

    if-ne v4, v9, :cond_10

    iget-object v9, v1, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v9, :cond_10

    move-object/from16 v9, p1

    :try_start_2
    invoke-static {v9, v14, v3, v15}, Landroid/provider/CallLog$Calls;->updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_f
    const/4 v8, 0x0

    :cond_10
    move-object/from16 v9, p1

    :goto_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v9, p1

    :goto_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_11
    const/4 v8, 0x0

    move-object/from16 v9, p1

    goto :goto_9

    :cond_12
    move-object/from16 v23, v2

    move-object v7, v8

    move-object/from16 v20, v11

    move-object/from16 v17, v12

    move-object/from16 v25, v13

    move/from16 v19, v22

    const/4 v0, 0x1

    const/4 v8, 0x0

    move-object/from16 v9, p1

    :goto_9
    const/4 v2, 0x0

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v9, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserHandle()I

    move-result v10

    if-eqz p13, :cond_1a

    sget-object v12, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v9, v3, v12, v7}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_19

    const-string v13, "call_log_shadow"

    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    goto :goto_c

    :cond_13
    if-nez v10, :cond_14

    move-object v2, v12

    :cond_14
    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    const/16 v27, 0x0

    :goto_a
    move/from16 v13, v27

    if-ge v13, v8, :cond_18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    move-object/from16 v29, v0

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/UserHandle;->isSystem()Z

    move-result v16

    if-eqz v16, :cond_15

    goto :goto_b

    :cond_15
    invoke-static {v9, v3, v0}, Landroid/provider/CallLog$Calls;->shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v16

    if-nez v16, :cond_16

    goto :goto_b

    :cond_16
    invoke-virtual {v3, v1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v16

    if-eqz v16, :cond_17

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v16

    if-eqz v16, :cond_17

    invoke-static {v9, v3, v1, v7}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    if-ne v0, v10, :cond_17

    move-object/from16 v0, v16

    move-object v2, v0

    :cond_17
    :goto_b
    add-int/lit8 v27, v13, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    goto :goto_a

    :cond_18
    goto :goto_e

    :cond_19
    :goto_c
    const/4 v1, 0x0

    return-object v1

    :cond_1a
    if-eqz p14, :cond_1b

    nop

    move-object/from16 v0, p14

    goto :goto_d

    :cond_1b
    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    :goto_d
    invoke-static {v9, v3, v0, v7}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    :goto_e
    return-object v2
.end method

.method private static addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v1, v2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "subscription_id"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "subscription_id"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "subscription_component_name"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "subscription_component_name"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "_id IN (SELECT _id FROM calls WHERE subscription_component_name = ? AND subscription_id = ? ORDER BY date DESC LIMIT -1 OFFSET 500)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "subscription_component_name"

    invoke-virtual {p3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "subscription_id"

    invoke-virtual {p3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v4, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET 500)"

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v3

    :catch_0
    move-exception v3

    const-string v4, "CallLog"

    const-string v5, "Failed to insert calllog"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v0, 0x0

    move-object v7, v0

    :try_start_0
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "number"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "type = 2"

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 1"

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z
    .locals 3

    const-string/jumbo v0, "no_outgoing_calls"

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private static updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "type"

    const-string v2, "call"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/provider/CallLog$Calls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    nop

    invoke-static {p0}, Landroid/provider/CallLog$Calls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "data4"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_0
    return-void
.end method

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

    .line 81
    const-string v0, "content://call_log/calls"

    .line 82
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 85
    const-string v0, "content://call_log_shadow/calls"

    .line 86
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    .line 91
    const-string v0, "content://call_log/calls/filter"

    .line 92
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 148
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "allow_voicemails"

    const-string/jumbo v2, "true"

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    .line 148
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;)Landroid/net/Uri;
    .locals 16
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "features"    # I
    .param p6, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p7, "start"    # J
    .param p9, "duration"    # I
    .param p10, "dataUsage"    # Ljava/lang/Long;

    .line 534
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
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "postDialDigits"    # Ljava/lang/String;
    .param p4, "viaNumber"    # Ljava/lang/String;
    .param p5, "presentation"    # I
    .param p6, "callType"    # I
    .param p7, "features"    # I
    .param p8, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p9, "start"    # J
    .param p11, "duration"    # I
    .param p12, "dataUsage"    # Ljava/lang/Long;
    .param p13, "addForAllUsers"    # Z
    .param p14, "userToBeInsertedTo"    # Landroid/os/UserHandle;

    .line 573
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
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "postDialDigits"    # Ljava/lang/String;
    .param p4, "viaNumber"    # Ljava/lang/String;
    .param p5, "presentation"    # I
    .param p6, "callType"    # I
    .param p7, "features"    # I
    .param p8, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p9, "start"    # J
    .param p11, "duration"    # I
    .param p12, "dataUsage"    # Ljava/lang/Long;
    .param p13, "addForAllUsers"    # Z
    .param p14, "userToBeInsertedTo"    # Landroid/os/UserHandle;
    .param p15, "is_read"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p8

    move/from16 v6, p11

    move-object/from16 v7, p12

    .line 621
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 622
    .local v14, "resolver":Landroid/content/ContentResolver;
    const/4 v8, 0x1

    .line 624
    .local v8, "numberPresentation":I
    const/4 v15, 0x0

    move-object v9, v15

    .line 626
    .local v9, "tm":Landroid/telecom/TelecomManager;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v0

    .line 627
    nop

    .line 629
    .end local v9    # "tm":Landroid/telecom/TelecomManager;
    .local v13, "tm":Landroid/telecom/TelecomManager;
    :goto_0
    move-object v13, v9

    goto :goto_1

    .line 627
    .end local v13    # "tm":Landroid/telecom/TelecomManager;
    .restart local v9    # "tm":Landroid/telecom/TelecomManager;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 629
    .end local v9    # "tm":Landroid/telecom/TelecomManager;
    .restart local v13    # "tm":Landroid/telecom/TelecomManager;
    :goto_1
    const/4 v0, 0x0

    .line 630
    .local v0, "accountAddress":Ljava/lang/String;
    if-eqz v13, :cond_0

    if-eqz v5, :cond_0

    .line 631
    invoke-virtual {v13, v5}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v9

    .line 632
    .local v9, "account":Landroid/telecom/PhoneAccount;
    if-eqz v9, :cond_0

    .line 633
    invoke-virtual {v9}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v10

    .line 634
    .local v10, "address":Landroid/net/Uri;
    if-eqz v10, :cond_0

    .line 635
    invoke-virtual {v10}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 645
    .end local v0    # "accountAddress":Ljava/lang/String;
    .end local v9    # "account":Landroid/telecom/PhoneAccount;
    .end local v10    # "address":Landroid/net/Uri;
    .local v12, "accountAddress":Ljava/lang/String;
    :cond_0
    move-object v12, v0

    const/4 v0, 0x3

    const/4 v11, 0x2

    if-ne v3, v11, :cond_2

    .line 646
    const/4 v8, 0x2

    .line 653
    .end local v8    # "numberPresentation":I
    .local v10, "numberPresentation":I
    :cond_1
    :goto_2
    move v10, v8

    goto :goto_3

    .line 647
    .end local v10    # "numberPresentation":I
    .restart local v8    # "numberPresentation":I
    :cond_2
    const/4 v9, 0x4

    if-ne v3, v9, :cond_3

    .line 648
    const/4 v8, 0x4

    goto :goto_2

    .line 649
    :cond_3
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    if-ne v3, v0, :cond_1

    .line 651
    :cond_4
    const/4 v8, 0x3

    goto :goto_2

    .line 653
    .end local v8    # "numberPresentation":I
    .restart local v10    # "numberPresentation":I
    :goto_3
    const/4 v9, 0x1

    if-eq v10, v9, :cond_6

    .line 654
    const-string v8, ""

    .line 655
    .end local p2    # "number":Ljava/lang/String;
    .local v8, "number":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 656
    const-string v15, ""

    iput-object v15, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 661
    :cond_5
    move-object v15, v8

    goto :goto_4

    .line 661
    .end local v8    # "number":Ljava/lang/String;
    .restart local p2    # "number":Ljava/lang/String;
    :cond_6
    move-object/from16 v15, p2

    .line 661
    .end local p2    # "number":Ljava/lang/String;
    .local v15, "number":Ljava/lang/String;
    :goto_4
    const/4 v8, 0x0

    .line 662
    .local v8, "accountComponentString":Ljava/lang/String;
    const/16 v17, 0x0

    .line 663
    .local v17, "accountId":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 664
    invoke-virtual/range {p8 .. p8}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    .line 665
    invoke-virtual/range {p8 .. p8}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v17

    .line 668
    .end local v8    # "accountComponentString":Ljava/lang/String;
    .local v11, "accountComponentString":Ljava/lang/String;
    :cond_7
    move-object v11, v8

    new-instance v8, Landroid/content/ContentValues;

    const/4 v0, 0x6

    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 672
    .local v8, "values":Landroid/content/ContentValues;
    const-wide/16 v20, 0x0

    if-eqz v1, :cond_a

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 674
    const-string/jumbo v0, "oneplus_emergency"

    .line 677
    .end local v17    # "accountId":Ljava/lang/String;
    .local v0, "accountId":Ljava/lang/String;
    move-object/from16 v17, v0

    .line 677
    .end local v0    # "accountId":Ljava/lang/String;
    .restart local v17    # "accountId":Ljava/lang/String;
    :cond_8
    const-string/jumbo v0, "name"

    iget-object v9, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_9

    .line 680
    const-string/jumbo v0, "photo_uri"

    iget-object v9, v1, Lcom/android/internal/telephony/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string/jumbo v0, "photo_id"

    iget v9, v1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 683
    :cond_9
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->lookupKey:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-wide v2, v1, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    cmp-long v0, v2, v20

    if-lez v0, :cond_a

    .line 684
    iget-wide v2, v1, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->lookupKey:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 685
    .local v0, "lookupUri":Landroid/net/Uri;
    if-eqz v0, :cond_a

    .line 686
    const-string/jumbo v2, "lookup_uri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    .end local v0    # "lookupUri":Landroid/net/Uri;
    :cond_a
    move-object/from16 v2, v17

    .line 692
    .end local v17    # "accountId":Ljava/lang/String;
    .local v2, "accountId":Ljava/lang/String;
    const-string/jumbo v0, "number"

    invoke-virtual {v8, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string/jumbo v0, "post_dial_digits"

    move-object/from16 v3, p3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string/jumbo v0, "via_number"

    move-object/from16 v9, p4

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string/jumbo v0, "presentation"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 696
    const-string/jumbo v0, "type"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    const-string v0, "features"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 698
    const-string v0, "date"

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 699
    const-string v0, "duration"

    move/from16 v22, v10

    int-to-long v9, v6

    .line 699
    .end local v10    # "numberPresentation":I
    .local v22, "numberPresentation":I
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 700
    if-eqz v7, :cond_b

    .line 701
    const-string v0, "data_usage"

    invoke-virtual {v8, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 703
    :cond_b
    const-string/jumbo v0, "subscription_component_name"

    invoke-virtual {v8, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string/jumbo v0, "subscription_id"

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string/jumbo v0, "phone_account_address"

    invoke-virtual {v8, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string/jumbo v0, "new"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 707
    const-string v0, "add_for_all_users"

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 709
    const/4 v0, 0x3

    if-ne v4, v0, :cond_c

    .line 710
    const-string v0, "is_read"

    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 713
    :cond_c
    if-eqz v1, :cond_12

    iget-wide v9, v1, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    cmp-long v3, v9, v20

    if-lez v3, :cond_12

    .line 722
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 723
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 724
    .local v3, "normalizedPhoneNumber":Ljava/lang/String;
    sget-object v9, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v10, "_id"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v17, "contact_id =? AND data4 =?"

    move-object/from16 v23, v2

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    .line 724
    .end local v2    # "accountId":Ljava/lang/String;
    .local v23, "accountId":Ljava/lang/String;
    move-object/from16 v24, v8

    iget-wide v7, v1, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    .line 727
    .end local v8    # "values":Landroid/content/ContentValues;
    .local v24, "values":Landroid/content/ContentValues;
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v2, v8

    const/4 v7, 0x1

    aput-object v3, v2, v7

    const/16 v18, 0x0

    .line 724
    move-object/from16 v7, v24

    move-object v8, v14

    .line 724
    .end local v24    # "values":Landroid/content/ContentValues;
    .local v7, "values":Landroid/content/ContentValues;
    const/4 v0, 0x1

    move/from16 v19, v22

    .line 724
    .end local v22    # "numberPresentation":I
    .local v19, "numberPresentation":I
    move-object/from16 v20, v11

    move-object/from16 v11, v17

    .line 724
    .end local v11    # "accountComponentString":Ljava/lang/String;
    .local v20, "accountComponentString":Ljava/lang/String;
    move-object/from16 v17, v12

    move-object v12, v2

    .line 724
    .end local v12    # "accountAddress":Ljava/lang/String;
    .local v17, "accountAddress":Ljava/lang/String;
    move-object v2, v13

    move-object/from16 v13, v18

    .line 724
    .end local v13    # "tm":Landroid/telecom/TelecomManager;
    .local v2, "tm":Landroid/telecom/TelecomManager;
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 730
    .local v3, "cursor":Landroid/database/Cursor;
    nop

    .line 732
    move-object/from16 v25, v2

    goto :goto_6

    .line 731
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v17    # "accountAddress":Ljava/lang/String;
    .end local v19    # "numberPresentation":I
    .end local v20    # "accountComponentString":Ljava/lang/String;
    .end local v23    # "accountId":Ljava/lang/String;
    .local v2, "accountId":Ljava/lang/String;
    .restart local v8    # "values":Landroid/content/ContentValues;
    .restart local v11    # "accountComponentString":Ljava/lang/String;
    .restart local v12    # "accountAddress":Ljava/lang/String;
    .restart local v13    # "tm":Landroid/telecom/TelecomManager;
    .restart local v22    # "numberPresentation":I
    :cond_d
    move-object/from16 v23, v2

    move-object v7, v8

    move-object/from16 v20, v11

    move-object/from16 v17, v12

    move-object v2, v13

    move/from16 v19, v22

    const/4 v0, 0x1

    .line 731
    .end local v8    # "values":Landroid/content/ContentValues;
    .end local v11    # "accountComponentString":Ljava/lang/String;
    .end local v12    # "accountAddress":Ljava/lang/String;
    .end local v13    # "tm":Landroid/telecom/TelecomManager;
    .end local v22    # "numberPresentation":I
    .local v2, "tm":Landroid/telecom/TelecomManager;
    .restart local v7    # "values":Landroid/content/ContentValues;
    .restart local v17    # "accountAddress":Ljava/lang/String;
    .restart local v19    # "numberPresentation":I
    .restart local v20    # "accountComponentString":Ljava/lang/String;
    .restart local v23    # "accountId":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_5

    :cond_e
    move-object v3, v15

    .line 732
    .local v3, "phoneNumber":Ljava/lang/String;
    :goto_5
    sget-object v8, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 734
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 733
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

    .line 737
    .end local v2    # "tm":Landroid/telecom/TelecomManager;
    .end local v3    # "phoneNumber":Ljava/lang/String;
    .local v25, "tm":Landroid/telecom/TelecomManager;
    .local v26, "phoneNumber":Ljava/lang/String;
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v12, v3

    const/4 v13, 0x0

    .line 732
    move-object v8, v14

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 732
    .end local v26    # "phoneNumber":Ljava/lang/String;
    .local v3, "cursor":Landroid/database/Cursor;
    :goto_6
    move-object v2, v3

    .line 741
    .end local v3    # "cursor":Landroid/database/Cursor;
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_11

    .line 743
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_f

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 744
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 745
    .local v3, "dataId":Ljava/lang/String;
    invoke-static {v14, v3}, Landroid/provider/CallLog$Calls;->updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 746
    const/16 v9, 0x2710

    if-lt v6, v9, :cond_10

    const/4 v9, 0x2

    if-ne v4, v9, :cond_10

    iget-object v9, v1, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 748
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v9, :cond_10

    .line 749
    move-object/from16 v9, p1

    :try_start_2
    invoke-static {v9, v14, v3, v15}, Landroid/provider/CallLog$Calls;->updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 749
    .end local v3    # "dataId":Ljava/lang/String;
    goto :goto_7

    .line 753
    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_f
    const/4 v8, 0x0

    :cond_10
    move-object/from16 v9, p1

    :goto_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 754
    goto :goto_9

    .line 753
    :catchall_1
    move-exception v0

    move-object/from16 v9, p1

    :goto_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 780
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_11
    const/4 v8, 0x0

    move-object/from16 v9, p1

    goto :goto_9

    .line 780
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v17    # "accountAddress":Ljava/lang/String;
    .end local v19    # "numberPresentation":I
    .end local v20    # "accountComponentString":Ljava/lang/String;
    .end local v23    # "accountId":Ljava/lang/String;
    .end local v25    # "tm":Landroid/telecom/TelecomManager;
    .local v2, "accountId":Ljava/lang/String;
    .restart local v8    # "values":Landroid/content/ContentValues;
    .restart local v11    # "accountComponentString":Ljava/lang/String;
    .restart local v12    # "accountAddress":Ljava/lang/String;
    .restart local v13    # "tm":Landroid/telecom/TelecomManager;
    .restart local v22    # "numberPresentation":I
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

    .line 780
    .end local v2    # "accountId":Ljava/lang/String;
    .end local v8    # "values":Landroid/content/ContentValues;
    .end local v11    # "accountComponentString":Ljava/lang/String;
    .end local v12    # "accountAddress":Ljava/lang/String;
    .end local v13    # "tm":Landroid/telecom/TelecomManager;
    .end local v22    # "numberPresentation":I
    .restart local v7    # "values":Landroid/content/ContentValues;
    .restart local v17    # "accountAddress":Ljava/lang/String;
    .restart local v19    # "numberPresentation":I
    .restart local v20    # "accountComponentString":Ljava/lang/String;
    .restart local v23    # "accountId":Ljava/lang/String;
    .restart local v25    # "tm":Landroid/telecom/TelecomManager;
    :goto_9
    const/4 v2, 0x0

    .line 782
    .local v2, "result":Landroid/net/Uri;
    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v9, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 783
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUserHandle()I

    move-result v10

    .line 785
    .local v10, "currentUserId":I
    if-eqz p13, :cond_1a

    .line 787
    sget-object v12, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v9, v3, v12, v7}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 789
    .local v12, "uriForSystem":Landroid/net/Uri;
    if-eqz v12, :cond_19

    const-string v13, "call_log_shadow"

    .line 790
    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    goto :goto_c

    .line 796
    :cond_13
    if-nez v10, :cond_14

    .line 797
    move-object v2, v12

    .line 802
    :cond_14
    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 804
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 805
    .local v8, "count":I
    const/16 v27, 0x0

    .line 805
    .local v27, "i":I
    :goto_a
    move/from16 v13, v27

    .line 805
    .end local v27    # "i":I
    .local v13, "i":I
    if-ge v13, v8, :cond_18

    .line 806
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 807
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    .local v28, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 808
    .local v1, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v29, v0

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 810
    .local v0, "userId":I
    .local v29, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/os/UserHandle;->isSystem()Z

    move-result v16

    if-eqz v16, :cond_15

    .line 812
    goto :goto_b

    .line 815
    :cond_15
    invoke-static {v9, v3, v0}, Landroid/provider/CallLog$Calls;->shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v16

    if-nez v16, :cond_16

    .line 817
    goto :goto_b

    .line 823
    :cond_16
    invoke-virtual {v3, v1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v16

    if-eqz v16, :cond_17

    .line 824
    invoke-virtual {v3, v1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v16

    if-eqz v16, :cond_17

    .line 825
    invoke-static {v9, v3, v1, v7}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 827
    .local v16, "uri":Landroid/net/Uri;
    if-ne v0, v10, :cond_17

    .line 828
    move-object/from16 v0, v16

    .line 805
    .end local v1    # "userHandle":Landroid/os/UserHandle;
    .end local v2    # "result":Landroid/net/Uri;
    .end local v16    # "uri":Landroid/net/Uri;
    .end local v29    # "userInfo":Landroid/content/pm/UserInfo;
    .local v0, "result":Landroid/net/Uri;
    move-object v2, v0

    .line 805
    .end local v0    # "result":Landroid/net/Uri;
    .restart local v2    # "result":Landroid/net/Uri;
    :cond_17
    :goto_b
    add-int/lit8 v27, v13, 0x1

    .line 805
    .end local v13    # "i":I
    .restart local v27    # "i":I
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    goto :goto_a

    .line 832
    .end local v8    # "count":I
    .end local v12    # "uriForSystem":Landroid/net/Uri;
    .end local v27    # "i":I
    .end local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_18
    goto :goto_e

    .line 794
    .restart local v12    # "uriForSystem":Landroid/net/Uri;
    :cond_19
    :goto_c
    const/4 v1, 0x0

    return-object v1

    .line 836
    .end local v12    # "uriForSystem":Landroid/net/Uri;
    :cond_1a
    if-eqz p14, :cond_1b

    .line 837
    nop

    .line 838
    move-object/from16 v0, p14

    goto :goto_d

    :cond_1b
    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 839
    .local v0, "targetUserHandle":Landroid/os/UserHandle;
    :goto_d
    invoke-static {v9, v3, v0, v7}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 842
    .end local v0    # "targetUserHandle":Landroid/os/UserHandle;
    :goto_e
    return-object v2
.end method

.method private static addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "values"    # Landroid/content/ContentValues;

    .line 883
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 888
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    .line 889
    :goto_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 887
    invoke-static {v1, v2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 902
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 903
    .local v3, "result":Landroid/net/Uri;
    const-string/jumbo v4, "subscription_id"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "subscription_id"

    .line 904
    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "subscription_component_name"

    .line 905
    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "subscription_component_name"

    .line 906
    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 908
    const-string v4, "_id IN (SELECT _id FROM calls WHERE subscription_component_name = ? AND subscription_id = ? ORDER BY date DESC LIMIT -1 OFFSET 500)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "subscription_component_name"

    .line 914
    invoke-virtual {p3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "subscription_id"

    .line 915
    invoke-virtual {p3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 908
    invoke-virtual {v0, v1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 919
    :cond_1
    const-string v4, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET 500)"

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    :goto_1
    return-object v3

    .line 925
    .end local v3    # "result":Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 926
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "CallLog"

    const-string v5, "Failed to insert calllog"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 930
    return-object v2
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 967
    const/4 v0, 0x0

    .line 968
    .local v0, "countryIso":Ljava/lang/String;
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 970
    .local v1, "detector":Landroid/location/CountryDetector;
    if-eqz v1, :cond_0

    .line 971
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    .line 972
    .local v2, "country":Landroid/location/Country;
    if-eqz v2, :cond_0

    .line 973
    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 976
    .end local v2    # "country":Landroid/location/Country;
    :cond_0
    return-object v0
.end method

.method public static getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 863
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 864
    .local v6, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    move-object v7, v0

    .line 866
    .local v7, "c":Landroid/database/Cursor;
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

    .line 872
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 875
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 875
    :cond_1
    return-object v0

    .line 873
    :cond_2
    :goto_0
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 877
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 873
    :cond_3
    return-object v0

    .line 877
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "userId"    # I

    .line 848
    const-string/jumbo v0, "no_outgoing_calls"

    .line 849
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 848
    invoke-virtual {p1, v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 850
    return v1

    .line 852
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 853
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
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
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "dataId"    # Ljava/lang/String;

    .line 935
    sget-object v0, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 936
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "type"

    const-string v2, "call"

    .line 937
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 939
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 940
    .local v0, "feedbackUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 941
    return-void
.end method

.method private static updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .line 949
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 952
    :cond_0
    invoke-static {p0}, Landroid/provider/CallLog$Calls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 953
    .local v0, "countryIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 954
    return-void

    .line 956
    :cond_1
    nop

    .line 957
    invoke-static {p0}, Landroid/provider/CallLog$Calls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 956
    invoke-static {p3, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 958
    .local v1, "normalizedNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 959
    return-void

    .line 961
    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 962
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "data4"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 964
    return-void

    .line 950
    .end local v0    # "countryIso":Ljava/lang/String;
    .end local v1    # "normalizedNumber":Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_3
    :goto_0
    return-void
.end method

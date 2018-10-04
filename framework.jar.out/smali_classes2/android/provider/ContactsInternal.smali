.class public Landroid/provider/ContactsInternal;
.super Ljava/lang/Object;
.source "ContactsInternal.java"


# static fields
.field private static final CONTACTS_URI_LOOKUP:I = 0x3e9

.field private static final CONTACTS_URI_LOOKUP_ID:I = 0x3e8

.field private static final sContactsUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Landroid/provider/ContactsInternal;->sContactsUriMatcher:Landroid/content/UriMatcher;

    sget-object v0, Landroid/provider/ContactsInternal;->sContactsUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static maybeStartManagedQuickContact(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 24

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-ge v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    sget-wide v5, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    goto :goto_1

    :cond_1
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    :goto_1
    move-wide v13, v5

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Ljava/lang/String;

    const-string v5, "directory"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-wide/32 v5, 0x3b9aca00

    if-nez v12, :cond_2

    nop

    move-wide v7, v5

    goto :goto_2

    :cond_2
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    :goto_2
    move-wide v10, v7

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    move-wide v5, v10

    move-object/from16 v23, v12

    goto/16 :goto_3

    :cond_3
    invoke-static {v13, v14}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v10, v11}, Landroid/provider/ContactsContract$Directory;->isEnterpriseDirectoryId(J)Z

    move-result v3

    if-eqz v3, :cond_4

    const-class v3, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v9, p0

    invoke-virtual {v9, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    sget-wide v7, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    sub-long v17, v13, v7

    sub-long v19, v10, v5

    move-object v5, v3

    move-object/from16 v6, v16

    move-wide/from16 v7, v17

    move v9, v2

    move-wide/from16 v21, v10

    move-wide/from16 v10, v19

    move-object/from16 v23, v12

    move-object/from16 v12, p1

    invoke-virtual/range {v5 .. v12}, Landroid/app/admin/DevicePolicyManager;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    return v4

    :cond_4
    move-wide/from16 v21, v10

    move-object/from16 v23, v12

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid enterprise directory id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v21

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    move-wide v5, v10

    move-object/from16 v23, v12

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid enterprise contact id: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    move-wide v5, v10

    move-object/from16 v23, v12

    :goto_3
    return v3
.end method

.method public static startQuickContactWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsInternal;->sContactsUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1}, Landroid/provider/ContactsInternal;->maybeStartManagedQuickContact(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {p0, p1, v2}, Landroid/provider/ContactsInternal;->startQuickContactWithErrorToastForUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static startQuickContactWithErrorToastForUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const v1, 0x1040588

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

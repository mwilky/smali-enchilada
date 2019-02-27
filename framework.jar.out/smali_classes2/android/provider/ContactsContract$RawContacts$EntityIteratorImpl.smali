.class Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;
.super Landroid/content/CursorEntityIterator;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$RawContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityIteratorImpl"
.end annotation


# static fields
.field private static final DATA_KEYS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v0, "data1"

    const-string v1, "data2"

    const-string v2, "data3"

    const-string v3, "data4"

    const-string v4, "data5"

    const-string v5, "data6"

    const-string v6, "data7"

    const-string v7, "data8"

    const-string v8, "data9"

    const-string v9, "data10"

    const-string v10, "data11"

    const-string v11, "data12"

    const-string v12, "data13"

    const-string v13, "data14"

    const-string v14, "data15"

    const-string v15, "data_sync1"

    const-string v16, "data_sync2"

    const-string v17, "data_sync3"

    const-string v18, "data_sync4"

    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;->DATA_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "account_name"

    invoke-static {p1, v3, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v4, "account_type"

    invoke-static {p1, v3, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v4, "data_set"

    invoke-static {p1, v3, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v4, "_id"

    invoke-static {p1, v3, v4}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v4, "dirty"

    invoke-static {p1, v3, v4}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v4, "version"

    invoke-static {p1, v3, v4}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v4, "sourceid"

    invoke-static {p1, v3, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v4, "sync1"

    invoke-static {p1, v3, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v4, "sync2"

    invoke-static {p1, v3, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v4, "sync3"

    invoke-static {p1, v3, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v4, "sync4"

    invoke-static {p1, v3, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v4, "deleted"

    invoke-static {p1, v3, v4}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v4, "contact_id"

    invoke-static {p1, v3, v4}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v4, "starred"

    invoke-static {p1, v3, v4}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Entity;

    invoke-direct {v4, v3}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-eqz v5, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    move-object v3, v5

    const-string v5, "_id"

    const-string v6, "data_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "res_package"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v5, "mimetype"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v5, "is_primary"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v5, "is_super_primary"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v5, "data_version"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v5, "group_sourceid"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v5, "data_version"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    sget-object v5, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;->DATA_KEYS:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getType(I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Invalid or unhandled data type"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    :pswitch_1
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    nop

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_2
    return-object v4

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

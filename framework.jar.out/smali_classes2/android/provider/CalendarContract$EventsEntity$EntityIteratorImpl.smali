.class Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;
.super Landroid/content/CursorEntityIterator;
.source "CalendarContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract$EventsEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityIteratorImpl"
.end annotation


# static fields
.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field private static final COLUMN_ATTENDEE_EMAIL:I = 0x1

.field private static final COLUMN_ATTENDEE_IDENTITY:I = 0x5

.field private static final COLUMN_ATTENDEE_ID_NAMESPACE:I = 0x6

.field private static final COLUMN_ATTENDEE_NAME:I = 0x0

.field private static final COLUMN_ATTENDEE_RELATIONSHIP:I = 0x2

.field private static final COLUMN_ATTENDEE_STATUS:I = 0x4

.field private static final COLUMN_ATTENDEE_TYPE:I = 0x3

.field private static final COLUMN_ID:I = 0x0

.field private static final COLUMN_METHOD:I = 0x1

.field private static final COLUMN_MINUTES:I = 0x0

.field private static final COLUMN_NAME:I = 0x1

.field private static final COLUMN_VALUE:I = 0x2

.field private static final EXTENDED_PROJECTION:[Ljava/lang/String;

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String;

.field private static final WHERE_EVENT_ID:Ljava/lang/String; = "event_id=?"


# instance fields
.field private final mProvider:Landroid/content/ContentProviderClient;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string/jumbo v0, "minutes"

    const-string/jumbo v1, "method"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const-string v1, "attendeeName"

    const-string v2, "attendeeEmail"

    const-string v3, "attendeeRelationship"

    const-string v4, "attendeeType"

    const-string v5, "attendeeStatus"

    const-string v6, "attendeeIdentity"

    const-string v7, "attendeeIdNamespace"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v0, "_id"

    const-string/jumbo v1, "name"

    const-string/jumbo v2, "value"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->EXTENDED_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/ContentProviderClient;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    iput-object p2, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    return-void
.end method


# virtual methods
.method public getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v5, v0

    const-string v0, "_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "calendar_id"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "eventLocation"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "eventStatus"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v0, "selfAttendeeStatus"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "dtstart"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "dtend"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "duration"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "eventTimezone"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "eventEndTimezone"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "allDay"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "accessLevel"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "availability"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "eventColor"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "eventColor_index"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "hasAlarm"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "hasExtendedProperties"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v0, "rrule"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v0, "rdate"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "exrule"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "exdate"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v0, "original_sync_id"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v0, "original_id"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v0, "originalInstanceTime"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v0, "originalAllDay"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "lastDate"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "hasAttendeeData"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "guestsCanInviteOthers"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "guestsCanModify"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "guestsCanSeeGuests"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "customAppPackage"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "customAppUri"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v0, "uid2445"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v0, "organizer"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "isOrganizer"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "_sync_id"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "dirty"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v0, "mutators"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "lastSynced"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "deleted"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v0, "sync_data1"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v0, "sync_data2"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v0, "sync_data3"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v0, "sync_data4"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v0, "sync_data5"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v0, "sync_data6"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v0, "sync_data7"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v0, "sync_data8"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v0, "sync_data9"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string/jumbo v0, "sync_data10"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "cal_sync1"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "cal_sync2"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "cal_sync3"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "cal_sync4"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "cal_sync5"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "cal_sync6"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "cal_sync7"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "cal_sync8"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "cal_sync9"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "cal_sync10"

    invoke-static {v2, v5, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Entity;

    invoke-direct {v0, v5}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    move-object v6, v0

    iget-object v0, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    iget-object v9, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v10, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    sget-object v11, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const-string v12, "event_id=?"

    new-array v13, v8, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v7

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v9, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v10, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    sget-object v11, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const-string v12, "event_id=?"

    new-array v13, v8, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v7

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    move-object v9, v0

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v10, "minutes"

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v10, "method"

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v10, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v10, v0}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    nop

    move-object v0, v9

    goto :goto_0

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    nop

    iget-object v0, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_2

    iget-object v10, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v11, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v12, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v13, "event_id=?"

    new-array v14, v8, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v7

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_1
    move-object v9, v0

    goto :goto_2

    :cond_2
    iget-object v10, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v11, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v12, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v13, "event_id=?"

    new-array v14, v8, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v7

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    :goto_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v10, 0x2

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "attendeeName"

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "attendeeEmail"

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "attendeeRelationship"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "attendeeType"

    const/4 v11, 0x3

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "attendeeStatus"

    const/4 v11, 0x4

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "attendeeIdentity"

    const/4 v11, 0x5

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "attendeeIdNamespace"

    const/4 v11, 0x6

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v10, v0}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    nop

    iget-object v0, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_4

    iget-object v11, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v12, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    sget-object v13, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->EXTENDED_PROJECTION:[Ljava/lang/String;

    const-string v14, "event_id=?"

    new-array v15, v8, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v15, v7

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_3
    move-object v9, v0

    goto :goto_4

    :cond_4
    iget-object v11, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v12, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    sget-object v13, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->EXTENDED_PROJECTION:[Ljava/lang/String;

    const-string v14, "event_id=?"

    new-array v15, v8, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v15, v7

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_3

    :goto_4
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "_id"

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "name"

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "value"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v11, v0}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    nop

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    return-object v6

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_1
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_2
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.class Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "locksettings.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final IDLE_CONNECTION_TIMEOUT_MS:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "LockSettingsDB"


# instance fields
.field private mCallback:Lcom/android/server/locksettings/LockSettingsStorage$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "locksettings.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->setIdleConnectionTimeout(J)V

    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE locksettings (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,user INTEGER,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/locksettings/LockSettingsStorage$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/locksettings/LockSettingsStorage$Callback;

    invoke-interface {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Callback;->initialize(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    move v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const-string v1, "LockSettingsDB"

    const-string v2, "Failed to upgrade database!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/locksettings/LockSettingsStorage$Callback;

    return-void
.end method

.class final Lcom/android/server/am/Connor$RecordStatistic;
.super Ljava/lang/Object;
.source "Connor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Connor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecordStatistic"
.end annotation


# instance fields
.field mCv:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/android/server/am/Connor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/Connor;Landroid/content/ContentValues;)V
    .locals 0
    .param p2, "cv"    # Landroid/content/ContentValues;

    .line 150
    iput-object p1, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/android/server/am/Connor$RecordStatistic;->mCv:Landroid/content/ContentValues;

    .line 152
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 157
    const-wide/16 v0, 0x1388

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v2}, Lcom/android/server/am/Connor;->access$000(Lcom/android/server/am/Connor;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    iget-object v3, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v3}, Lcom/android/server/am/Connor;->access$100(Lcom/android/server/am/Connor;)Lcom/android/server/am/ConnorDbHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ConnorDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/am/Connor;->access$002(Lcom/android/server/am/Connor;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v2}, Lcom/android/server/am/Connor;->access$000(Lcom/android/server/am/Connor;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "connor_statistic_table"

    iget-object v4, p0, Lcom/android/server/am/Connor$RecordStatistic;->mCv:Landroid/content/ContentValues;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 159
    iput-object v5, p0, Lcom/android/server/am/Connor$RecordStatistic;->mCv:Landroid/content/ContentValues;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v2}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v3}, Lcom/android/server/am/Connor;->access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    iget-object v2, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v2}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v3}, Lcom/android/server/am/Connor;->access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    nop

    .line 166
    return-void

    .line 163
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v3}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v4}, Lcom/android/server/am/Connor;->access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    iget-object v3, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v3}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v4}, Lcom/android/server/am/Connor;->access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v2
.end method

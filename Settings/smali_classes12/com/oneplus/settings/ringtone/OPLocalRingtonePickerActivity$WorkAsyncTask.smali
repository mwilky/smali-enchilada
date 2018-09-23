.class Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;
.super Landroid/os/AsyncTask;
.source "OPLocalRingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private isclose:Z

.field private resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->isclose:Z

    iput-object p2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->resolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->resolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$400()Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$500()[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$600()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$700()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "date_modified DESC,title DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->resolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$400()Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$500()[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$800()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$900()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "date_modified DESC,title DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {v3}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1000(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1002(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Ljava/util/List;)Ljava/util/List;

    :cond_2
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {v3}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1000(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_3
    const-string v3, "111"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isclose:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->isclose:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->isclose:Z

    if-eqz v3, :cond_4

    goto/16 :goto_3

    :cond_4
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    const/4 v7, 0x4

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v4}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1100(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/oneplus/settings/utils/OPUtils;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "title"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_8
    const-string v9, "_display_name"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    iget-object v9, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget-object v9, v9, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v6, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    new-instance v10, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

    invoke-direct {v10, v6, v8, v9}, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;-><init>(Landroid/net/Uri;Ljava/lang/String;Z)V

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->filepath:Ljava/lang/String;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->mimetype:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {v3}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1000(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->isclose:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1200(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1300(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1400(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    new-instance v1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {v3}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1000(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1402(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;)Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1300(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1300(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1400(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1400(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setClose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->isclose:Z

    return-void
.end method

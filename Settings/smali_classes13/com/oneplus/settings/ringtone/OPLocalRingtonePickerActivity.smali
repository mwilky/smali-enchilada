.class public Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;
.super Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;
.source "OPLocalRingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;,
        Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;
    }
.end annotation


# static fields
.field private static final ALARMS_PATH:Ljava/lang/String;

.field private static final AUDIO_FILE_SELECTION_ALL:Ljava/lang/String;

.field private static final AUDIO_FILE_SELECTION_PART:Ljava/lang/String;

.field public static AUDIO_SECTION:Ljava/lang/String; = null

.field private static final MINTIME:J = 0xea60L

.field private static final NOTIFICATIONS_PATH:Ljava/lang/String;

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final RECORD_PATH:Ljava/lang/String;

.field private static final RECORD_URI:Landroid/net/Uri;

.field private static final RINGTONE_PATH:Ljava/lang/String;

.field private static final SDCARD_PATH:Ljava/lang/String;

.field public static SECTION_AFTER:Ljava/lang/String;

.field private static final SELECTION_ARGS_ALL:[Ljava/lang/String;

.field private static final SELECTION_ARGS_PART:[Ljava/lang/String;


# instance fields
.field private isFirst:Z

.field private mListView:Landroid/widget/ListView;

.field private mNofileView:Landroid/widget/TextView;

.field private mOPLocalRingtoneAdapter:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSetExternalThread:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

.field private mSystemRings:Ljava/util/List;

.field private mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, " and _data NOT LIKE \'%/.%\' and _data NOT LIKE \'%cache%\' and _data NOT LIKE \'%/res/%\' and _data NOT LIKE \'%/plugins/%\' and _data NOT LIKE \'%/temp/%\' and _data NOT LIKE \'%/tencent/MobileQQ/qbiz/%\' and _data NOT LIKE \'%/tencent/MobileQQ/PhotoPlus/%\' and _data NOT LIKE \'%/thumb/%\' and _data NOT LIKE \'%/oem_log/%\'"

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SECTION_AFTER:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(_data LIKE \'%.wma\' or _data LIKE \'%.mp3\' or _data LIKE \'%.aac\' or _data LIKE \'%.mid\' or _data LIKE \'%.ogg\' or _data LIKE \'%.flac\' or _data LIKE \'%.ape\' or _data LIKE \'%.ra\' or _data LIKE \'%.mod\' or _data LIKE \'%.m4a\' or _data LIKE \'%.amr\' )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SECTION_AFTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->AUDIO_SECTION:Ljava/lang/String;

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RECORD_URI:Landroid/net/Uri;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "_display_name"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "_data"

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string v1, "title"

    const/4 v4, 0x5

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data not like ? and"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->AUDIO_SECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->AUDIO_FILE_SELECTION_ALL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data not like ? and duration < 60000 and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->AUDIO_SECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->AUDIO_FILE_SELECTION_PART:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Ringtones/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RINGTONE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Notifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->NOTIFICATIONS_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Alarms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->ALARMS_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Record/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RECORD_PATH:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RECORD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SELECTION_ARGS_ALL:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RECORD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SELECTION_ARGS_PART:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->isFirst:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    new-instance v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$1;-><init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;-><init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->isFirst:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->isFirst:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->startTask(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->isApeFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOPLocalRingtoneAdapter:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;)Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOPLocalRingtoneAdapter:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->updateExternalFile(Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->updateChecks(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSetExternalThread:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;)Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSetExternalThread:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

    return-object p1
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RECORD_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->AUDIO_FILE_SELECTION_ALL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SELECTION_ARGS_ALL:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->AUDIO_FILE_SELECTION_PART:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SELECTION_ARGS_PART:[Ljava/lang/String;

    return-object v0
.end method

.method private checkDir()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RINGTONE_PATH:Ljava/lang/String;

    iget v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->ALARMS_PATH:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->NOTIFICATIONS_PATH:Ljava/lang/String;

    :cond_2
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_3
    return-object v0
.end method

.method private initActionbar()V
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const v1, 0x7f0d01c9

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0262

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f03008f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x7f0d01c8

    const v6, 0x1020014

    invoke-direct {v4, p0, v5, v6, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method private isApeFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "audio/*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 p1, 0x0

    :try_start_0
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    move-object v0, v2

    invoke-virtual {v0, p2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    move-object p1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    nop

    :goto_2
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ringtoneCopyFrom3rdParty: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/settings/ringtone/OPMyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_2

    :goto_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    :cond_2
    throw v1

    :cond_3
    :goto_4
    if-eqz p1, :cond_5

    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_4

    goto :goto_5

    :cond_4
    return v1

    :cond_5
    :goto_5
    const/4 v0, 0x1

    return v0
.end method

.method private startTask(I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->setClose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mNofileView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    new-instance v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;-><init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateChecks(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOPLocalRingtoneAdapter:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

    iget-object v2, v1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->isCheck:Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOPLocalRingtoneAdapter:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private updateDb(Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;Ljava/lang/String;)Landroid/net/Uri;
    .locals 9

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "_data=?"

    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v4, v8

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v6, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_2

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_data"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    iget-object v3, p1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mime_type"

    iget-object v3, p1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mType:I

    if-ne v2, v7, :cond_1

    const-string v2, "is_ringtone"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "is_alarm"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v2, "is_notification"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v6, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v6, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    :goto_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string v2, "chenhl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "defaultitem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private updateExternalFile(Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;)Landroid/net/Uri;
    .locals 5

    const-string v0, "chenhl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->filepath:Ljava/lang/String;

    const-string v1, "chenhl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$3;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$3;-><init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    return-object v2

    :cond_0
    const/16 v2, 0x12c

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->playRingtone(ILandroid/net/Uri;)V

    if-eqz v0, :cond_3

    const-string v2, "/storage/emulated/legacy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->checkDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->updateDb(Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    return-object v2
.end method


# virtual methods
.method public copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x5a4

    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v1, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    add-int/2addr v0, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "key_selected_item_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0199

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->initActionbar()V

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mListView:Landroid/widget/ListView;

    const v0, 0x7f0a025f

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mNofileView:Landroid/widget/TextView;

    const v0, 0x7f0a0261

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mNofileView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-class v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate startTask"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->startTask(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->setClose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;

    :cond_0
    invoke-super {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onDestroy()V

    return-void
.end method

.method protected updateSelected()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.class public Lcom/android/settings/fuelgauge/BatteryEntry;
.super Ljava/lang/Object;
.source "BatteryEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;,
        Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;
    }
.end annotation


# static fields
.field public static final MSG_REPORT_FULLY_DRAWN:I = 0x2

.field public static final MSG_UPDATE_NAME_ICON:I = 0x1

.field private static final PACKAGE_SYSTEM:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "BatteryEntry"

.field static final mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/fuelgauge/BatteryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

.field static sCurrentLocale:Ljava/util/Locale;

.field static sHandler:Landroid/os/Handler;

.field static final sUidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final context:Landroid/content/Context;

.field public defaultPackageName:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconId:I

.field public name:Ljava/lang/String;

.field public final sipper:Lcom/android/internal/os/BatterySipper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sCurrentLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "um"    # Landroid/os/UserManager;
    .param p4, "sipper"    # Lcom/android/internal/os/BatterySipper;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    sput-object p2, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    .line 139
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    .line 140
    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    .line 141
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry$1;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v1, p4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x7f08020d

    const v2, 0x7f0801f1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 213
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 214
    const v0, 0x7f0801ff

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_2

    .line 209
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120dd0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 210
    const v0, 0x7f080207

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 211
    goto/16 :goto_2

    .line 205
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120ddf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 206
    iput v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 207
    goto/16 :goto_2

    .line 201
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120dee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 202
    iput v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 203
    goto/16 :goto_2

    .line 190
    :pswitch_4
    iget v0, p4, Lcom/android/internal/os/BatterySipper;->userId:I

    invoke-virtual {p3, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 191
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 192
    invoke-static {p1, p3, v0}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 193
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto :goto_0

    .line 195
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120ef9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 199
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :goto_0
    goto/16 :goto_2

    .line 171
    :pswitch_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 172
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p4, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 174
    iget-object v1, p4, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p4, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 177
    :cond_1
    iget-object v1, p4, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 181
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_2

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "BatteryEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageManager failed to retrieve ApplicationInfo for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 188
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_2

    .line 175
    :cond_2
    :goto_1
    iget-object v1, p4, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_2

    .line 167
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :pswitch_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120ddc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 168
    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 169
    goto :goto_2

    .line 163
    :pswitch_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120dec

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 164
    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 165
    goto :goto_2

    .line 159
    :pswitch_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120dcf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 160
    const v0, 0x7f080206

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 161
    goto :goto_2

    .line 155
    :pswitch_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120df6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 156
    const v0, 0x7f080229

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 157
    goto :goto_2

    .line 151
    :pswitch_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120de0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 152
    const v0, 0x7f080227

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 153
    goto :goto_2

    .line 147
    :pswitch_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120dd1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 148
    const v0, 0x7f080208

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 149
    goto :goto_2

    .line 143
    :pswitch_c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120dde

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 144
    const v0, 0x7f08021a

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 145
    nop

    .line 217
    :goto_2
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    if-lez v0, :cond_3

    .line 218
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 219
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06029f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_5

    .line 223
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryEntry;->getQuickNameIconForUid(I)V

    .line 225
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static clearUidCache()V
    .locals 1

    .line 120
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 121
    return-void
.end method

.method public static startRequestQueue()V
    .locals 3

    .line 94
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 95
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 96
    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->abort()V

    .line 100
    :cond_0
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;-><init>()V

    sput-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    .line 101
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->setPriority(I)V

    .line 102
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->start()V

    .line 103
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 105
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 107
    :cond_2
    :goto_0
    return-void
.end method

.method public static stopRequestQueue()V
    .locals 2

    .line 110
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    if-eqz v1, :cond_0

    .line 112
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->abort()V

    .line 113
    const/4 v1, 0x0

    sput-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    .line 114
    sput-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    .line 116
    :cond_0
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method extractPackagesFromSipper(Lcom/android/internal/os/BatterySipper;)[Ljava/lang/String;
    .locals 2
    .param p1, "sipper"    # Lcom/android/internal/os/BatterySipper;

    .line 375
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 376
    const-string v0, "android"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 377
    :cond_0
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 375
    :goto_0
    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method getQuickNameIconForUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .line 240
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 241
    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->sCurrentLocale:Ljava/util/Locale;

    if-eq v1, v0, :cond_0

    .line 242
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    .line 243
    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sCurrentLocale:Ljava/util/Locale;

    .line 246
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "uidString":Ljava/lang/String;
    sget-object v2, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    sget-object v2, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;

    .line 249
    .local v2, "utd":Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;
    iget-object v3, v2, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 250
    iget-object v3, v2, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 251
    iget-object v3, v2, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 252
    return-void

    .line 254
    .end local v2    # "utd":Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 255
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 256
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 257
    if-nez p1, :cond_2

    .line 258
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120e32

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto :goto_0

    .line 259
    :cond_2
    const-string v3, "mediaserver"

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 260
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120e33

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto :goto_0

    .line 261
    :cond_3
    const-string v3, "dex2oat"

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 262
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120e30

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 264
    :cond_4
    :goto_0
    const v3, 0x7f0801f1

    iput v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 265
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 268
    :cond_5
    sget-object v3, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v3, :cond_6

    .line 269
    sget-object v3, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v3

    .line 270
    :try_start_0
    sget-object v4, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 273
    :cond_6
    :goto_1
    return-void
.end method

.method public loadNameAndIcon()V
    .locals 15

    .line 280
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-nez v0, :cond_0

    .line 281
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 285
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v1, v1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    .line 286
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 287
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 290
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/BatteryEntry;->extractPackagesFromSipper(Lcom/android/internal/os/BatterySipper;)[Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "packages":[Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v2, :cond_a

    .line 292
    array-length v4, v2

    new-array v4, v4, [Ljava/lang/String;

    .line 293
    .local v4, "packageLabels":[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 297
    .local v5, "ipm":Landroid/content/pm/IPackageManager;
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 298
    .local v7, "userId":I
    move v8, v6

    .local v8, "i":I
    :goto_0
    array-length v9, v4

    if-ge v8, v9, :cond_5

    .line 300
    :try_start_0
    aget-object v9, v4, v8

    invoke-interface {v5, v9, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 302
    .local v9, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v9, :cond_2

    .line 303
    const-string v10, "BatteryEntry"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Retrieving null app info for package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v4, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    goto :goto_1

    .line 307
    :cond_2
    invoke-virtual {v9, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 308
    .local v10, "label":Ljava/lang/CharSequence;
    if-eqz v10, :cond_3

    .line 309
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v8

    .line 311
    :cond_3
    iget v11, v9, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v11, :cond_4

    .line 312
    aget-object v11, v2, v8

    iput-object v11, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 313
    invoke-virtual {v9, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    goto :goto_2

    .line 319
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "label":Ljava/lang/CharSequence;
    :cond_4
    goto :goto_1

    .line 316
    :catch_0
    move-exception v9

    .line 317
    .local v9, "e":Landroid/os/RemoteException;
    const-string v10, "BatteryEntry"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error while retrieving app info for package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v4, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 322
    .end local v8    # "i":I
    :cond_5
    :goto_2
    array-length v8, v4

    if-ne v8, v3, :cond_6

    .line 323
    aget-object v6, v4, v6

    iput-object v6, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_5

    .line 326
    :cond_6
    array-length v8, v2

    move v9, v6

    :goto_3
    if-ge v9, v8, :cond_a

    aget-object v10, v2, v9

    .line 328
    .local v10, "pkgName":Ljava/lang/String;
    :try_start_1
    invoke-interface {v5, v10, v6, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 329
    .local v11, "pi":Landroid/content/pm/PackageInfo;
    if-nez v11, :cond_7

    .line 330
    const-string v12, "BatteryEntry"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Retrieving null package info for package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    goto :goto_4

    .line 334
    :cond_7
    iget v12, v11, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v12, :cond_9

    .line 335
    iget v12, v11, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v13, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v10, v12, v13}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 337
    .local v12, "nm":Ljava/lang/CharSequence;
    if-eqz v12, :cond_9

    .line 338
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 339
    iget-object v13, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v13, :cond_8

    .line 340
    iput-object v10, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 341
    iget-object v13, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v13, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iput-object v13, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 343
    :cond_8
    goto :goto_5

    .line 349
    .end local v11    # "pi":Landroid/content/pm/PackageInfo;
    .end local v12    # "nm":Ljava/lang/CharSequence;
    :cond_9
    goto :goto_4

    .line 346
    :catch_1
    move-exception v11

    .line 347
    .local v11, "e":Landroid/os/RemoteException;
    const-string v12, "BatteryEntry"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error while retrieving package info for package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "e":Landroid/os/RemoteException;
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 354
    .end local v4    # "packageLabels":[Ljava/lang/String;
    .end local v5    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v7    # "userId":I
    :cond_a
    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 355
    .local v4, "uidString":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    if-nez v5, :cond_b

    .line 356
    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 359
    :cond_b
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_c

    .line 360
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 363
    :cond_c
    new-instance v5, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;

    invoke-direct {v5}, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;-><init>()V

    .line 364
    .local v5, "utd":Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;
    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->name:Ljava/lang/String;

    .line 365
    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v6, v5, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 366
    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->packageName:Ljava/lang/String;

    .line 367
    sget-object v6, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v6, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v6, :cond_d

    .line 369
    sget-object v6, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    sget-object v7, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 371
    :cond_d
    return-void
.end method

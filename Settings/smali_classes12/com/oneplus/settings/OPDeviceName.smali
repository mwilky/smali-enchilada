.class public Lcom/oneplus/settings/OPDeviceName;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPDeviceName.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPDeviceName$Utf8ByteLengthFilter;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_NAME_MAX_LENGTH_BYTES:I = 0x20

.field private static devicename:Ljava/lang/String;

.field private static mDeviceName:Lcom/oneplus/lib/widget/OPEditText;

.field private static mOKView:Landroid/widget/TextView;

.field private static mView:Landroid/view/View;


# instance fields
.field private mOKMenuItem:Landroid/view/MenuItem;

.field private nameTemp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/OPDeviceName;->nameTemp:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/oneplus/lib/widget/OPEditText;
    .locals 1

    .line 38
    sget-object v0, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/lib/widget/OPEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPDeviceName;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPDeviceName;

    .line 38
    iget-object v0, p0, Lcom/oneplus/settings/OPDeviceName;->nameTemp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/OPDeviceName;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPDeviceName;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/oneplus/settings/OPDeviceName;->nameTemp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()Landroid/widget/TextView;
    .locals 1

    .line 38
    sget-object v0, Lcom/oneplus/settings/OPDeviceName;->mOKView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/OPDeviceName;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPDeviceName;

    .line 38
    iget-object v0, p0, Lcom/oneplus/settings/OPDeviceName;->mOKMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method private isNotEmojiCharacter(C)Z
    .locals 1
    .param p1, "codePoint"    # C

    .line 192
    if-eqz p1, :cond_3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    const v0, 0xd7ff

    if-le p1, v0, :cond_3

    :cond_0
    const v0, 0xe000

    if-lt p1, v0, :cond_1

    const v0, 0xfffd

    if-le p1, v0, :cond_3

    :cond_1
    const/high16 v0, 0x10000

    if-lt p1, v0, :cond_2

    const v0, 0x10ffff

    if-gt p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 342
    const/16 v0, 0x270f

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 169
    .local v0, "id":I
    const v1, 0x7f0a0355

    if-ne v0, v1, :cond_1

    .line 171
    sget-object v1, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/lib/widget/OPEditText;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "dn":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 175
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_devicename"

    .line 174
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->finish()V

    .line 180
    .end local v1    # "dn":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPDeviceName;->setRetainInstance(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 57
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 184
    const v0, 0x7f120acb

    .line 185
    .local v0, "textId":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/OPDeviceName;->mOKMenuItem:Landroid/view/MenuItem;

    .line 186
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceName;->mOKMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 188
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 189
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 64
    const/4 v0, 0x0

    const v1, 0x7f0d0157

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/oneplus/settings/OPDeviceName;->mView:Landroid/view/View;

    .line 65
    sget-object v1, Lcom/oneplus/settings/OPDeviceName;->mView:Landroid/view/View;

    const v2, 0x7f0a0183

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/OPEditText;

    sput-object v1, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/lib/widget/OPEditText;

    .line 70
    nop

    .line 71
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_oneplus_modified_devicename"

    .line 70
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "modified":Ljava/lang/String;
    nop

    .line 74
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_devicename"

    .line 73
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "mOPDeviceName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->resetDeviceNameIfInvalid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 78
    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    const-string v3, "oneplus"

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ONE E1001"

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ONE E1003"

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ONE E1005"

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    :cond_0
    const-string v3, "ro.display.series"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_oneplus_devicename"

    .line 84
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 88
    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_oneplus_modified_devicename"

    const-string v5, "1"

    .line 87
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_2

    .line 93
    const/16 v3, 0x1f

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oem_oneplus_devicename"

    .line 94
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    :cond_2
    sget-object v0, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/lib/widget/OPEditText;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/OPEditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    if-eqz v2, :cond_3

    .line 101
    sget-object v0, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/lib/widget/OPEditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/OPEditText;->setSelection(I)V

    .line 102
    :cond_3
    sget-object v0, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/lib/widget/OPEditText;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPEditText;->selectAll()V

    .line 103
    sget-object v0, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/lib/widget/OPEditText;

    new-instance v3, Lcom/oneplus/settings/OPDeviceName$1;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/OPDeviceName$1;-><init>(Lcom/oneplus/settings/OPDeviceName;)V

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/OPEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    sget-object v0, Lcom/oneplus/settings/OPDeviceName;->mView:Landroid/view/View;

    const v3, 0x7f0a0355

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/oneplus/settings/OPDeviceName;->mOKView:Landroid/widget/TextView;

    .line 159
    sget-object v0, Lcom/oneplus/settings/OPDeviceName;->mOKView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPDeviceName;->setHasOptionsMenu(Z)V

    .line 162
    sget-object v0, Lcom/oneplus/settings/OPDeviceName;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const v2, 0x102002c

    if-eq v0, v2, :cond_0

    .line 255
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->finish()V

    .line 250
    return v1

    .line 203
    :cond_1
    sget-object v0, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/lib/widget/OPEditText;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "dn":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    .line 206
    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const v3, 0x7f121457

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 208
    return v1

    .line 214
    :cond_2
    move v2, v4

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 217
    .local v5, "cur":C
    invoke-direct {p0, v5}, Lcom/oneplus/settings/OPDeviceName;->isNotEmojiCharacter(C)Z

    move-result v6

    if-nez v6, :cond_3

    .line 218
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 219
    return v1

    .line 214
    .end local v5    # "cur":C
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 227
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_devicename"

    .line 226
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 228
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 229
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_modified_devicename"

    const-string v4, "1"

    .line 228
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 231
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 232
    .local v2, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v2, :cond_5

    .line 233
    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 237
    :cond_5
    const-string v3, "wifip2p"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPDeviceName;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 238
    .local v3, "mWifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 239
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    .line 238
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    .line 240
    .local v4, "mChannel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    if-eqz v3, :cond_6

    .line 241
    invoke-virtual {v3, v4, v0, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 244
    .end local v2    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v3    # "mWifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    .end local v4    # "mChannel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->finish()V

    .line 245
    return v1
.end method

.method public onResume()V
    .locals 0

    .line 274
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 275
    return-void
.end method

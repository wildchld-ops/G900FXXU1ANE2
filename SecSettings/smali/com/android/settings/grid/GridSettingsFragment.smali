.class public Lcom/android/settings/grid/GridSettingsFragment;
.super Landroid/app/Fragment;
.source "GridSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public childList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGridAdapter:Lcom/android/settings/grid/ExpandableListViewAdapter;

.field public mGridType:I

.field private mGridarea:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

.field public sectionItems:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->sectionItems:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/grid/GridSettingsFragment;)Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/grid/GridSettingsFragment;)Lcom/android/settings/grid/ExpandableListViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/ExpandableListViewAdapter;

    return-object v0
.end method


# virtual methods
.method public addSections(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    invoke-static {v1}, Lcom/android/settings/GridSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v5

    if-nez v5, :cond_2

    if-nez v4, :cond_1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public initHeaderList(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "initHeaderList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/settings/grid/GridSettingsFragment;->addSections(Ljava/util/List;)V

    new-instance v0, Lcom/android/settings/grid/ExpandableListViewAdapter;

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridType:I

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/grid/ExpandableListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/ExpandableListViewAdapter;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/grid/GridSettingsFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public loadExpandState(J)Z
    .locals 6

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    long-to-int v4, p1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment;->mContext:Landroid/content/Context;

    const-string v4, "expand_state"

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "GridSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load > headerID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / isExpanded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public moveToSharedPref(Landroid/preference/PreferenceActivity$Header;)V
    .locals 8

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->mContext:Landroid/content/Context;

    const-string v6, "expand_state"

    iget-object v7, p0, Lcom/android/settings/grid/GridSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/grid/GridSettingsFragment;->mContext:Landroid/content/Context;

    instance-of v0, p1, Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;

    invoke-interface {v0}, Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;->getGridType()I

    move-result v0

    iput v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridType:I

    :goto_0
    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/ExpandableListViewAdapter;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/grid/GridSettingsFragment;->initHeaderList(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    instance-of v0, p1, Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/ExpandableListViewAdapter;

    move-object v0, p1

    check-cast v0, Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    invoke-virtual {v1, v0}, Lcom/android/settings/grid/ExpandableListViewAdapter;->setListener(Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;)V

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void

    :cond_1
    sget-object v0, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "activity is not OnSetListner"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "activity is not OnGridItemListener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/ExpandableListViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/ExpandableListViewAdapter;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/android/settings/grid/ExpandableListViewAdapter;->onOrientationChanged(I)V

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/ExpandableListViewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/grid/ExpandableListViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    sget-object v1, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0400c4

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b022e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iput-object v1, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v1, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/ExpandableListViewAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/grid/GridSettingsFragment;->setupListView()V

    return-object v0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method

.method public saveExpandstate(JZ)V
    .locals 6

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    long-to-int v4, p1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment;->mContext:Landroid/content/Context;

    const-string v4, "expand_state"

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v3, "GridSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save > headerID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / isExpanded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setupListView()V
    .locals 7

    const/high16 v6, 0x4020

    const v5, 0x3f333333

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/ExpandableListViewAdapter;

    invoke-virtual {v3}, Lcom/android/settings/grid/ExpandableListViewAdapter;->getGroupCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/ExpandableListViewAdapter;

    invoke-virtual {v3, v1}, Lcom/android/settings/grid/ExpandableListViewAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v0}, Lcom/android/settings/grid/GridSettingsFragment;->moveToSharedPref(Landroid/preference/PreferenceActivity$Header;)V

    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/grid/GridSettingsFragment;->loadExpandState(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandGroup(I)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->collapseGroup(I)Z

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setItemsCanFocus(Z)V

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setCollapseAllSpeedFactor(F)V

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandAllSpeedFactor(F)V

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setCollapseSpeedFactor(F)V

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandSpeedFactor(F)V

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    new-instance v4, Lcom/android/settings/grid/GridSettingsFragment$1;

    invoke-direct {v4, p0}, Lcom/android/settings/grid/GridSettingsFragment$1;-><init>(Lcom/android/settings/grid/GridSettingsFragment;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setOnGroupClickListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;)V

    goto :goto_0
.end method

.class Lcom/android/settings/grid/GridSettingsFragment$1;
.super Ljava/lang/Object;
.source "GridSettingsFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/grid/GridSettingsFragment;->setupListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/grid/GridSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/grid/GridSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/grid/GridSettingsFragment$1;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;IJ)Z
    .locals 7

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment$1;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    #getter for: Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    invoke-static {v2}, Lcom/android/settings/grid/GridSettingsFragment;->access$000(Lcom/android/settings/grid/GridSettingsFragment;)Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isGroupExpanded(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment$1;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    #getter for: Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/ExpandableListViewAdapter;
    invoke-static {v2}, Lcom/android/settings/grid/GridSettingsFragment;->access$100(Lcom/android/settings/grid/GridSettingsFragment;)Lcom/android/settings/grid/ExpandableListViewAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/settings/grid/ExpandableListViewAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment$1;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    #getter for: Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    invoke-static {v2}, Lcom/android/settings/grid/GridSettingsFragment;->access$000(Lcom/android/settings/grid/GridSettingsFragment;)Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->collapseGroup(I)Z

    :goto_0
    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment$1;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    if-nez v1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v4, v5, v6, v2}, Lcom/android/settings/grid/GridSettingsFragment;->saveExpandstate(JZ)V

    return v3

    :cond_0
    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment$1;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    #getter for: Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    invoke-static {v2}, Lcom/android/settings/grid/GridSettingsFragment;->access$000(Lcom/android/settings/grid/GridSettingsFragment;)Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandGroup(I)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

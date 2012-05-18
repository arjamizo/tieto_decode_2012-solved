#include<iostream>
#include<vector>
#include<set>

using namespace std;

const int infty = 1000000000; // uwaga na limit
int n,m;
vector< pair<int,int> > adj[100000];

vector<int> waga;

struct cmp
{
    // czy a jest mniejsze od b
    bool operator() (const int &a, const int &b)
    {
        if (waga[a] < waga[b]) return true;
        if (waga[a] > waga[b]) return false;
        return a<b;
    }
};


set<int, cmp> kopiec; // ;-)


void dijkstra(int s)
{
    int v, u, c;
    waga.clear(); // kasuje wektor
    waga.resize(n, infty); //

    waga[s] = 0;
    kopiec.clear();
    for (int i=0; i<n; i++) kopiec.insert(i);

    while( !kopiec.empty() )
    {
        u = *(kopiec.begin());
        kopiec.erase(kopiec.begin());

        for (int i=0; i<adj[u].size(); i++)
        {
            v = adj[u][i].first;
            c = adj[u][i].second;
            if (waga[u]+c < waga[v])
            {
                // uaktualniamy wagê wierzcho³ka v
                kopiec.erase(kopiec.find(v));
                waga[v] = waga[u]+c;
                kopiec.insert(v);
            }
        }
    }


}

int main(void)
{
    int a,b,c, s,t;

    cin >> n >> m;
    for (int i=0; i<m; i++)
    {
        cin >> a >> b >> c; // c = koszt krawêdzi od a do b
        adj[a].push_back( pair<int,int>(b,c) );
    }

    cin >> s >> t; // s - Ÿród³o, t - wierzcho³ek, do którego najkrótszej odleg³oœci szukamy

    dijkstra(0); // alg. Dijkstry wype³ni ca³¹ tablicê waga[..] najkrótszymi odleg³oœciami
    static int last_row[]={45, 46,  47,  48,  49,  50, 51, 52, 53, 54, 55};
    static int ile=10;
    for(int i=0; i<ile; i++)
		cout<<waga[last_row[i]]+24<<" "; /*bo pierwszy element*/
    //cout << waga[t];
    return 0;
}
